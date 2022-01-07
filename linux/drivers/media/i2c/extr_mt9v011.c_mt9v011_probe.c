
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_9__ {int function; } ;
struct v4l2_subdev {TYPE_1__* ctrl_handler; TYPE_4__ entity; } ;
struct mt9v011_platform_data {int xtal; } ;
struct TYPE_8__ {int error; } ;
struct TYPE_10__ {int flags; } ;
struct mt9v011 {int global_gain; int exposure; int width; int height; int xtal; TYPE_1__ ctrls; struct v4l2_subdev sd; TYPE_5__ pad; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_12__ {struct mt9v011_platform_data* platform_data; } ;
struct i2c_client {int addr; TYPE_6__* adapter; TYPE_7__ dev; } ;
struct TYPE_11__ {int name; } ;


 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_READ_BYTE ;
 int I2C_FUNC_SMBUS_WRITE_BYTE_DATA ;
 int MEDIA_ENT_F_CAM_SENSOR ;
 int MEDIA_PAD_FL_SOURCE ;
 scalar_t__ MT9V011_REV_B_VERSION ;
 scalar_t__ MT9V011_VERSION ;
 int R00_MT9V011_CHIP_VERSION ;
 int V4L2_CID_BLUE_BALANCE ;
 int V4L2_CID_EXPOSURE ;
 int V4L2_CID_GAIN ;
 int V4L2_CID_HFLIP ;
 int V4L2_CID_RED_BALANCE ;
 int V4L2_CID_VFLIP ;
 int debug ;
 struct mt9v011* devm_kzalloc (TYPE_7__*,int,int ) ;
 int i2c_check_functionality (TYPE_6__*,int) ;
 int media_entity_pads_init (TYPE_4__*,int,TYPE_5__*) ;
 int mt9v011_ctrl_ops ;
 int mt9v011_ops ;
 scalar_t__ mt9v011_read (struct v4l2_subdev*,int ) ;
 int v4l2_ctrl_handler_free (TYPE_1__*) ;
 int v4l2_ctrl_handler_init (TYPE_1__*,int) ;
 int v4l2_ctrl_new_std (TYPE_1__*,int *,int ,int,int,int,int) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int,int) ;
 int v4l2_err (struct v4l2_subdev*,char*,int) ;
 int v4l2_i2c_subdev_init (struct v4l2_subdev*,struct i2c_client*,int *) ;
 int v4l2_info (struct v4l2_subdev*,char*,scalar_t__) ;
 int v4l_info (struct i2c_client*,char*,int,int ,scalar_t__) ;

__attribute__((used)) static int mt9v011_probe(struct i2c_client *c,
    const struct i2c_device_id *id)
{
 u16 version;
 struct mt9v011 *core;
 struct v4l2_subdev *sd;





 if (!i2c_check_functionality(c->adapter,
      I2C_FUNC_SMBUS_READ_BYTE | I2C_FUNC_SMBUS_WRITE_BYTE_DATA))
  return -EIO;

 core = devm_kzalloc(&c->dev, sizeof(struct mt9v011), GFP_KERNEL);
 if (!core)
  return -ENOMEM;

 sd = &core->sd;
 v4l2_i2c_subdev_init(sd, c, &mt9v011_ops);
 version = mt9v011_read(sd, R00_MT9V011_CHIP_VERSION);
 if ((version != MT9V011_VERSION) &&
     (version != MT9V011_REV_B_VERSION)) {
  v4l2_info(sd, "*** unknown micron chip detected (0x%04x).\n",
     version);
  return -EINVAL;
 }

 v4l2_ctrl_handler_init(&core->ctrls, 5);
 v4l2_ctrl_new_std(&core->ctrls, &mt9v011_ctrl_ops,
     V4L2_CID_GAIN, 0, (1 << 12) - 1 - 0x20, 1, 0x20);
 v4l2_ctrl_new_std(&core->ctrls, &mt9v011_ctrl_ops,
     V4L2_CID_EXPOSURE, 0, 2047, 1, 0x01fc);
 v4l2_ctrl_new_std(&core->ctrls, &mt9v011_ctrl_ops,
     V4L2_CID_RED_BALANCE, -(1 << 9), (1 << 9) - 1, 1, 0);
 v4l2_ctrl_new_std(&core->ctrls, &mt9v011_ctrl_ops,
     V4L2_CID_BLUE_BALANCE, -(1 << 9), (1 << 9) - 1, 1, 0);
 v4l2_ctrl_new_std(&core->ctrls, &mt9v011_ctrl_ops,
     V4L2_CID_HFLIP, 0, 1, 1, 0);
 v4l2_ctrl_new_std(&core->ctrls, &mt9v011_ctrl_ops,
     V4L2_CID_VFLIP, 0, 1, 1, 0);

 if (core->ctrls.error) {
  int ret = core->ctrls.error;

  v4l2_err(sd, "control initialization error %d\n", ret);
  v4l2_ctrl_handler_free(&core->ctrls);
  return ret;
 }
 core->sd.ctrl_handler = &core->ctrls;

 core->global_gain = 0x0024;
 core->exposure = 0x01fc;
 core->width = 640;
 core->height = 480;
 core->xtal = 27000000;

 if (c->dev.platform_data) {
  struct mt9v011_platform_data *pdata = c->dev.platform_data;

  core->xtal = pdata->xtal;
  v4l2_dbg(1, debug, sd, "xtal set to %d.%03d MHz\n",
   core->xtal / 1000000, (core->xtal / 1000) % 1000);
 }

 v4l_info(c, "chip found @ 0x%02x (%s - chip version 0x%04x)\n",
   c->addr << 1, c->adapter->name, version);

 return 0;
}
