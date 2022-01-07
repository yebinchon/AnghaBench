
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct ov2640_priv {int streaming; int lock; int hdl; int cfmt_code; int win; } ;
struct i2c_client {int dummy; } ;


 int __v4l2_ctrl_handler_setup (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ov2640_set_params (struct i2c_client*,int ,int ) ;
 struct ov2640_priv* to_ov2640 (struct i2c_client*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int ov2640_s_stream(struct v4l2_subdev *sd, int on)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct ov2640_priv *priv = to_ov2640(client);
 int ret = 0;

 mutex_lock(&priv->lock);
 if (priv->streaming == !on) {
  if (on) {
   ret = ov2640_set_params(client, priv->win,
      priv->cfmt_code);
   if (!ret)
    ret = __v4l2_ctrl_handler_setup(&priv->hdl);
  }
 }
 if (!ret)
  priv->streaming = on;
 mutex_unlock(&priv->lock);

 return ret;
}
