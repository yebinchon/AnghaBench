
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct v4l2_subdev {int dummy; } ;
struct TYPE_6__ {int height; int width; } ;
struct mt9t112_priv {int init_done; TYPE_3__ frame; TYPE_2__* format; TYPE_1__* info; } ;
struct i2c_client {int dev; } ;
struct TYPE_5__ {int fmt; int order; int code; } ;
struct TYPE_4__ {int flags; } ;


 int CLOCK_INFO (struct i2c_client*,int ) ;
 int ECHECKER (int,int ) ;
 int EXT_CLOCK ;
 int MT9T112_FLAG_PCLK_RISING_EDGE ;
 int VAR (int,int) ;
 int VAR8 (int,int ) ;
 int VGA_HEIGHT ;
 int VGA_WIDTH ;
 int dev_dbg (int *,char*,int ,...) ;
 int mdelay (int) ;
 int mt9t112_auto_focus_trigger (struct i2c_client*) ;
 int mt9t112_init_camera (struct i2c_client*) ;
 int mt9t112_mcu_write (int,struct i2c_client*,int ,int) ;
 int mt9t112_reg_write (int,struct i2c_client*,int,int) ;
 int mt9t112_set_a_frame_size (struct i2c_client*,int ,int ) ;
 struct mt9t112_priv* to_mt9t112 (struct i2c_client*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int mt9t112_s_stream(struct v4l2_subdev *sd, int enable)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct mt9t112_priv *priv = to_mt9t112(client);
 int ret = 0;

 if (!enable) {
  mt9t112_set_a_frame_size(client, VGA_WIDTH, VGA_HEIGHT);
  return ret;
 }

 if (!priv->init_done) {
  u16 param = MT9T112_FLAG_PCLK_RISING_EDGE & priv->info->flags ?
       0x0001 : 0x0000;

  ECHECKER(ret, mt9t112_init_camera(client));


  mt9t112_reg_write(ret, client, 0x3C20, param);

  mdelay(5);

  priv->init_done = 1;
 }

 mt9t112_mcu_write(ret, client, VAR(26, 7), priv->format->fmt);
 mt9t112_mcu_write(ret, client, VAR(26, 9), priv->format->order);
 mt9t112_mcu_write(ret, client, VAR8(1, 0), 0x06);

 mt9t112_set_a_frame_size(client, priv->frame.width, priv->frame.height);

 ECHECKER(ret, mt9t112_auto_focus_trigger(client));

 dev_dbg(&client->dev, "format : %d\n", priv->format->code);
 dev_dbg(&client->dev, "size   : %d x %d\n",
  priv->frame.width,
  priv->frame.height);

 CLOCK_INFO(client, EXT_CLOCK);

 return ret;
}
