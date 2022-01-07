
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt9m001 {int hdl; int * fmts; int * fmt; void* num_fmts; } ;
struct i2c_client {int dev; } ;
typedef int s32 ;


 void* ARRAY_SIZE (void*) ;
 int ENODEV ;
 int MT9M001_CHIP_ENABLE ;
 int MT9M001_CHIP_VERSION ;
 int dev_dbg (int *,char*,int) ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,int,char*) ;
 void* mt9m001_colour_fmts ;
 int mt9m001_init (struct i2c_client*) ;
 void* mt9m001_monochrome_fmts ;
 int reg_read (struct i2c_client*,int ) ;
 int reg_write (struct i2c_client*,int ,int) ;
 struct mt9m001* to_mt9m001 (struct i2c_client*) ;
 int v4l2_ctrl_handler_setup (int *) ;

__attribute__((used)) static int mt9m001_video_probe(struct i2c_client *client)
{
 struct mt9m001 *mt9m001 = to_mt9m001(client);
 s32 data;
 int ret;


 data = reg_write(client, MT9M001_CHIP_ENABLE, 1);
 dev_dbg(&client->dev, "write: %d\n", data);


 data = reg_read(client, MT9M001_CHIP_VERSION);


 switch (data) {
 case 0x8411:
 case 0x8421:
  mt9m001->fmts = mt9m001_colour_fmts;
  mt9m001->num_fmts = ARRAY_SIZE(mt9m001_colour_fmts);
  break;
 case 0x8431:
  mt9m001->fmts = mt9m001_monochrome_fmts;
  mt9m001->num_fmts = ARRAY_SIZE(mt9m001_monochrome_fmts);
  break;
 default:
  dev_err(&client->dev,
   "No MT9M001 chip detected, register read %x\n", data);
  ret = -ENODEV;
  goto done;
 }

 mt9m001->fmt = &mt9m001->fmts[0];

 dev_info(&client->dev, "Detected a MT9M001 chip ID %x (%s)\n", data,
   data == 0x8431 ? "C12STM" : "C12ST");

 ret = mt9m001_init(client);
 if (ret < 0) {
  dev_err(&client->dev, "Failed to initialise the camera\n");
  goto done;
 }


 ret = v4l2_ctrl_handler_setup(&mt9m001->hdl);

done:
 return ret;
}
