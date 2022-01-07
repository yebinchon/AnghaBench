
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct ov772x_priv {int streaming; int lock; TYPE_2__* win; TYPE_1__* cfmt; int regmap; } ;
struct i2c_client {int dev; } ;
struct TYPE_4__ {int name; } ;
struct TYPE_3__ {int code; } ;


 int COM2 ;
 int SOFT_SLEEP_MODE ;
 int dev_dbg (int *,char*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct ov772x_priv* to_ov772x (struct v4l2_subdev*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int ov772x_s_stream(struct v4l2_subdev *sd, int enable)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct ov772x_priv *priv = to_ov772x(sd);
 int ret = 0;

 mutex_lock(&priv->lock);

 if (priv->streaming == enable)
  goto done;

 ret = regmap_update_bits(priv->regmap, COM2, SOFT_SLEEP_MODE,
     enable ? 0 : SOFT_SLEEP_MODE);
 if (ret)
  goto done;

 if (enable) {
  dev_dbg(&client->dev, "format %d, win %s\n",
   priv->cfmt->code, priv->win->name);
 }
 priv->streaming = enable;

done:
 mutex_unlock(&priv->lock);

 return ret;
}
