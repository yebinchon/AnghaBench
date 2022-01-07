
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_12__ {int function; } ;
struct v4l2_subdev {TYPE_6__ entity; TYPE_1__* ctrl_handler; int flags; } ;
struct v4l2_dv_timings {int dummy; } ;
struct tvp7002_config {int hs_polarity; int vs_polarity; int fid_polarity; int sog_polarity; int clk_polarity; } ;
struct TYPE_10__ {int error; } ;
struct TYPE_13__ {int flags; } ;
struct tvp7002 {struct v4l2_subdev sd; TYPE_1__ hdl; TYPE_7__ pad; TYPE_5__* current_timings; struct tvp7002_config* pdata; } ;
struct i2c_client {TYPE_9__* adapter; int addr; int dev; } ;
struct TYPE_14__ {int name; } ;
struct TYPE_11__ {struct v4l2_dv_timings timings; } ;


 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_READ_BYTE ;
 int I2C_FUNC_SMBUS_WRITE_BYTE_DATA ;
 int MEDIA_ENT_F_ATV_DECODER ;
 int MEDIA_PAD_FL_SOURCE ;
 int TVP7002_CHIP_REV ;
 int TVP7002_MISC_CTL_3 ;
 int TVP7002_SYNC_CTL_1 ;
 int V4L2_CID_GAIN ;
 int V4L2_SUBDEV_FL_HAS_DEVNODE ;
 int dev_err (int *,char*) ;
 struct tvp7002* devm_kzalloc (int *,int,int ) ;
 int i2c_check_functionality (TYPE_9__*,int) ;
 int media_entity_cleanup (TYPE_6__*) ;
 int media_entity_pads_init (TYPE_6__*,int,TYPE_7__*) ;
 int tvp7002_ctrl_ops ;
 struct tvp7002_config* tvp7002_get_pdata (struct i2c_client*) ;
 int tvp7002_init_default ;
 int tvp7002_ops ;
 int tvp7002_read (struct v4l2_subdev*,int ,int*) ;
 int tvp7002_s_dv_timings (struct v4l2_subdev*,struct v4l2_dv_timings*) ;
 TYPE_5__* tvp7002_timings ;
 int tvp7002_write (struct v4l2_subdev*,int ,int) ;
 int tvp7002_write_inittab (struct v4l2_subdev*,int ) ;
 int v4l2_async_register_subdev (struct v4l2_subdev*) ;
 int v4l2_ctrl_handler_free (TYPE_1__*) ;
 int v4l2_ctrl_handler_init (TYPE_1__*,int) ;
 int v4l2_ctrl_handler_setup (TYPE_1__*) ;
 int v4l2_ctrl_new_std (TYPE_1__*,int *,int ,int ,int,int,int ) ;
 int v4l2_i2c_subdev_init (struct v4l2_subdev*,struct i2c_client*,int *) ;
 int v4l2_info (struct v4l2_subdev*,char*,...) ;
 int v4l_info (struct i2c_client*,char*,int ,int ) ;

__attribute__((used)) static int tvp7002_probe(struct i2c_client *c)
{
 struct tvp7002_config *pdata = tvp7002_get_pdata(c);
 struct v4l2_subdev *sd;
 struct tvp7002 *device;
 struct v4l2_dv_timings timings;
 int polarity_a;
 int polarity_b;
 u8 revision;
 int error;

 if (pdata == ((void*)0)) {
  dev_err(&c->dev, "No platform data\n");
  return -EINVAL;
 }


 if (!i2c_check_functionality(c->adapter,
  I2C_FUNC_SMBUS_READ_BYTE | I2C_FUNC_SMBUS_WRITE_BYTE_DATA))
  return -EIO;

 device = devm_kzalloc(&c->dev, sizeof(struct tvp7002), GFP_KERNEL);

 if (!device)
  return -ENOMEM;

 sd = &device->sd;
 device->pdata = pdata;
 device->current_timings = tvp7002_timings;


 v4l2_i2c_subdev_init(sd, c, &tvp7002_ops);
 v4l_info(c, "tvp7002 found @ 0x%02x (%s)\n",
     c->addr, c->adapter->name);

 error = tvp7002_read(sd, TVP7002_CHIP_REV, &revision);
 if (error < 0)
  return error;


 v4l2_info(sd, "Rev. %02x detected.\n", revision);
 if (revision != 0x02)
  v4l2_info(sd, "Unknown revision detected.\n");


 error = tvp7002_write_inittab(sd, tvp7002_init_default);

 if (error < 0)
  return error;


 polarity_a = 0x20 | device->pdata->hs_polarity << 5
   | device->pdata->vs_polarity << 2;
 error = tvp7002_write(sd, TVP7002_SYNC_CTL_1, polarity_a);
 if (error < 0)
  return error;

 polarity_b = 0x01 | device->pdata->fid_polarity << 2
   | device->pdata->sog_polarity << 1
   | device->pdata->clk_polarity;
 error = tvp7002_write(sd, TVP7002_MISC_CTL_3, polarity_b);
 if (error < 0)
  return error;


 timings = device->current_timings->timings;
 error = tvp7002_s_dv_timings(sd, &timings);
 v4l2_ctrl_handler_init(&device->hdl, 1);
 v4l2_ctrl_new_std(&device->hdl, &tvp7002_ctrl_ops,
   V4L2_CID_GAIN, 0, 255, 1, 0);
 sd->ctrl_handler = &device->hdl;
 if (device->hdl.error) {
  error = device->hdl.error;
  goto error;
 }
 v4l2_ctrl_handler_setup(&device->hdl);

 error = v4l2_async_register_subdev(&device->sd);
 if (error)
  goto error;

 return 0;

error:
 v4l2_ctrl_handler_free(&device->hdl);



 return error;
}
