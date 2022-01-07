
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rj54n1_pdata {int ioctl_high; } ;
struct rj54n1 {int subdev; int hdl; } ;
struct i2c_client {int dev; } ;


 int ENODEV ;
 int RJ54N1_DEV_CODE ;
 int RJ54N1_DEV_CODE2 ;
 int RJ54N1_IOC ;
 int dev_info (int *,char*,int,int) ;
 int reg_read (struct i2c_client*,int ) ;
 int reg_write (struct i2c_client*,int ,int) ;
 int rj54n1_s_power (int *,int) ;
 struct rj54n1* to_rj54n1 (struct i2c_client*) ;
 int v4l2_ctrl_handler_setup (int *) ;

__attribute__((used)) static int rj54n1_video_probe(struct i2c_client *client,
         struct rj54n1_pdata *priv)
{
 struct rj54n1 *rj54n1 = to_rj54n1(client);
 int data1, data2;
 int ret;

 ret = rj54n1_s_power(&rj54n1->subdev, 1);
 if (ret < 0)
  return ret;


 data1 = reg_read(client, RJ54N1_DEV_CODE);
 data2 = reg_read(client, RJ54N1_DEV_CODE2);

 if (data1 != 0x51 || data2 != 0x10) {
  ret = -ENODEV;
  dev_info(&client->dev, "No RJ54N1CB0C found, read 0x%x:0x%x\n",
    data1, data2);
  goto done;
 }


 ret = reg_write(client, RJ54N1_IOC, priv->ioctl_high << 7);
 if (ret < 0)
  goto done;

 dev_info(&client->dev, "Detected a RJ54N1CB0C chip ID 0x%x:0x%x\n",
   data1, data2);

 ret = v4l2_ctrl_handler_setup(&rj54n1->hdl);

done:
 rj54n1_s_power(&rj54n1->subdev, 0);
 return ret;
}
