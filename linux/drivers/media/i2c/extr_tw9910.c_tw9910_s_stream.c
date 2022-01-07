
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct v4l2_subdev {int dummy; } ;
struct tw9910_priv {int revision; TYPE_1__* scale; } ;
struct i2c_client {int dev; } ;
struct TYPE_2__ {int height; int width; int name; } ;


 int EINVAL ;
 int EPERM ;
 int OEN_TRI_SEL_ALL_OFF_r0 ;
 int OEN_TRI_SEL_ALL_OFF_r1 ;
 int OEN_TRI_SEL_ALL_ON ;
 int OEN_TRI_SEL_MASK ;
 int OPFORM ;
 int dev_dbg (int *,char*,int ,int ,int ) ;
 int dev_err (int *,char*) ;
 struct tw9910_priv* to_tw9910 (struct i2c_client*) ;
 int tw9910_mask_set (struct i2c_client*,int ,int ,int ) ;
 int tw9910_power (struct i2c_client*,int) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int tw9910_s_stream(struct v4l2_subdev *sd, int enable)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct tw9910_priv *priv = to_tw9910(client);
 u8 val;
 int ret;

 if (!enable) {
  switch (priv->revision) {
  case 0:
   val = OEN_TRI_SEL_ALL_OFF_r0;
   break;
  case 1:
   val = OEN_TRI_SEL_ALL_OFF_r1;
   break;
  default:
   dev_err(&client->dev, "un-supported revision\n");
   return -EINVAL;
  }
 } else {
  val = OEN_TRI_SEL_ALL_ON;

  if (!priv->scale) {
   dev_err(&client->dev, "norm select error\n");
   return -EPERM;
  }

  dev_dbg(&client->dev, "%s %dx%d\n",
   priv->scale->name,
   priv->scale->width,
   priv->scale->height);
 }

 ret = tw9910_mask_set(client, OPFORM, OEN_TRI_SEL_MASK, val);
 if (ret < 0)
  return ret;

 return tw9910_power(client, enable);
}
