
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt9m111 {int subdev; int hdl; } ;
struct i2c_client {int dev; } ;
typedef int s32 ;


 int CHIP_VERSION ;
 int ENODEV ;
 int dev_err (int *,char*,int) ;
 int dev_info (int *,char*,int) ;
 int mt9m111_init (struct mt9m111*) ;
 int mt9m111_s_power (int *,int) ;
 int reg_read (int ) ;
 struct mt9m111* to_mt9m111 (struct i2c_client*) ;
 int v4l2_ctrl_handler_setup (int *) ;

__attribute__((used)) static int mt9m111_video_probe(struct i2c_client *client)
{
 struct mt9m111 *mt9m111 = to_mt9m111(client);
 s32 data;
 int ret;

 ret = mt9m111_s_power(&mt9m111->subdev, 1);
 if (ret < 0)
  return ret;

 data = reg_read(CHIP_VERSION);

 switch (data) {
 case 0x143a:
  dev_info(&client->dev,
   "Detected a MT9M111/MT9M131 chip ID %x\n", data);
  break;
 case 0x148c:
  dev_info(&client->dev, "Detected a MT9M112 chip ID %x\n", data);
  break;
 default:
  dev_err(&client->dev,
   "No MT9M111/MT9M112/MT9M131 chip detected register read %x\n",
   data);
  ret = -ENODEV;
  goto done;
 }

 ret = mt9m111_init(mt9m111);
 if (ret)
  goto done;

 ret = v4l2_ctrl_handler_setup(&mt9m111->hdl);

done:
 mt9m111_s_power(&mt9m111->subdev, 0);
 return ret;
}
