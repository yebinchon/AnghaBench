
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct v4l2_subdev {TYPE_1__* ctrl_handler; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int addr; TYPE_5__* adapter; int dev; } ;
struct TYPE_6__ {int error; } ;
struct bt819 {int enable; TYPE_1__ hdl; scalar_t__ input; int norm; struct v4l2_subdev sd; } ;
struct TYPE_7__ {int name; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int V4L2_CID_BRIGHTNESS ;
 int V4L2_CID_CONTRAST ;
 int V4L2_CID_HUE ;
 int V4L2_CID_SATURATION ;
 int V4L2_STD_NTSC ;
 int bt819_ctrl_ops ;
 int bt819_init (struct v4l2_subdev*) ;
 int bt819_ops ;
 int bt819_read (struct bt819*,int) ;
 int debug ;
 struct bt819* devm_kzalloc (int *,int,int ) ;
 int i2c_check_functionality (TYPE_5__*,int ) ;
 int v4l2_ctrl_handler_free (TYPE_1__*) ;
 int v4l2_ctrl_handler_init (TYPE_1__*,int) ;
 int v4l2_ctrl_handler_setup (TYPE_1__*) ;
 int v4l2_ctrl_new_std (TYPE_1__*,int *,int ,int,int,int,int) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int) ;
 int v4l2_i2c_subdev_init (struct v4l2_subdev*,struct i2c_client*,int *) ;
 int v4l_info (struct i2c_client*,char*,char const*,int,int ) ;

__attribute__((used)) static int bt819_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 int i, ver;
 struct bt819 *decoder;
 struct v4l2_subdev *sd;
 const char *name;


 if (!i2c_check_functionality(client->adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -ENODEV;

 decoder = devm_kzalloc(&client->dev, sizeof(*decoder), GFP_KERNEL);
 if (decoder == ((void*)0))
  return -ENOMEM;
 sd = &decoder->sd;
 v4l2_i2c_subdev_init(sd, client, &bt819_ops);

 ver = bt819_read(decoder, 0x17);
 switch (ver & 0xf0) {
 case 0x70:
  name = "bt819a";
  break;
 case 0x60:
  name = "bt817a";
  break;
 case 0x20:
  name = "bt815a";
  break;
 default:
  v4l2_dbg(1, debug, sd,
   "unknown chip version 0x%02x\n", ver);
  return -ENODEV;
 }

 v4l_info(client, "%s found @ 0x%x (%s)\n", name,
   client->addr << 1, client->adapter->name);

 decoder->norm = V4L2_STD_NTSC;
 decoder->input = 0;
 decoder->enable = 1;

 i = bt819_init(sd);
 if (i < 0)
  v4l2_dbg(1, debug, sd, "init status %d\n", i);

 v4l2_ctrl_handler_init(&decoder->hdl, 4);
 v4l2_ctrl_new_std(&decoder->hdl, &bt819_ctrl_ops,
   V4L2_CID_BRIGHTNESS, -128, 127, 1, 0);
 v4l2_ctrl_new_std(&decoder->hdl, &bt819_ctrl_ops,
   V4L2_CID_CONTRAST, 0, 511, 1, 0xd8);
 v4l2_ctrl_new_std(&decoder->hdl, &bt819_ctrl_ops,
   V4L2_CID_SATURATION, 0, 511, 1, 0xfe);
 v4l2_ctrl_new_std(&decoder->hdl, &bt819_ctrl_ops,
   V4L2_CID_HUE, -128, 127, 1, 0);
 sd->ctrl_handler = &decoder->hdl;
 if (decoder->hdl.error) {
  int err = decoder->hdl.error;

  v4l2_ctrl_handler_free(&decoder->hdl);
  return err;
 }
 v4l2_ctrl_handler_setup(&decoder->hdl);
 return 0;
}
