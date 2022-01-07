
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct ov2640_priv {int power_count; int lock; } ;
struct i2c_client {int dummy; } ;


 int WARN_ON (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ov2640_set_power (struct ov2640_priv*,int) ;
 struct ov2640_priv* to_ov2640 (struct i2c_client*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int ov2640_s_power(struct v4l2_subdev *sd, int on)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct ov2640_priv *priv = to_ov2640(client);

 mutex_lock(&priv->lock);





 if (priv->power_count == !on)
  ov2640_set_power(priv, on);
 priv->power_count += on ? 1 : -1;
 WARN_ON(priv->power_count < 0);
 mutex_unlock(&priv->lock);

 return 0;
}
