
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;
struct ov9640_priv {int revision; int subdev; int hdl; } ;
struct i2c_client {int dev; } ;


 int ENODEV ;
 int OV9640_MIDH ;
 int OV9640_MIDL ;
 int OV9640_PID ;


 int OV9640_VER ;
 int VERSION (int ,int ) ;
 int dev_err (int *,char*,int ,int ) ;
 int dev_info (int *,char*,char const*,int ,int ,int ,int ) ;
 struct v4l2_subdev* i2c_get_clientdata (struct i2c_client*) ;
 int ov9640_reg_read (struct i2c_client*,int ,int *) ;
 int ov9640_s_power (int *,int) ;
 struct ov9640_priv* to_ov9640_sensor (struct v4l2_subdev*) ;
 int v4l2_ctrl_handler_setup (int *) ;

__attribute__((used)) static int ov9640_video_probe(struct i2c_client *client)
{
 struct v4l2_subdev *sd = i2c_get_clientdata(client);
 struct ov9640_priv *priv = to_ov9640_sensor(sd);
 u8 pid, ver, midh, midl;
 const char *devname;
 int ret;

 ret = ov9640_s_power(&priv->subdev, 1);
 if (ret < 0)
  return ret;





 ret = ov9640_reg_read(client, OV9640_PID, &pid);
 if (!ret)
  ret = ov9640_reg_read(client, OV9640_VER, &ver);
 if (!ret)
  ret = ov9640_reg_read(client, OV9640_MIDH, &midh);
 if (!ret)
  ret = ov9640_reg_read(client, OV9640_MIDL, &midl);
 if (ret)
  goto done;

 switch (VERSION(pid, ver)) {
 case 129:
  devname = "ov9640";
  priv->revision = 2;
  break;
 case 128:
  devname = "ov9640";
  priv->revision = 3;
  break;
 default:
  dev_err(&client->dev, "Product ID error %x:%x\n", pid, ver);
  ret = -ENODEV;
  goto done;
 }

 dev_info(&client->dev, "%s Product ID %0x:%0x Manufacturer ID %x:%x\n",
   devname, pid, ver, midh, midl);

 ret = v4l2_ctrl_handler_setup(&priv->hdl);

done:
 ov9640_s_power(&priv->subdev, 0);
 return ret;
}
