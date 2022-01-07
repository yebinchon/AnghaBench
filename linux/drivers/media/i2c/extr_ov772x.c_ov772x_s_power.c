
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct ov772x_priv {int power_count; int lock; int win; int cfmt; } ;


 int WARN (int,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ov772x_power_off (struct ov772x_priv*) ;
 int ov772x_power_on (struct ov772x_priv*) ;
 int ov772x_set_params (struct ov772x_priv*,int ,int ) ;
 struct ov772x_priv* to_ov772x (struct v4l2_subdev*) ;

__attribute__((used)) static int ov772x_s_power(struct v4l2_subdev *sd, int on)
{
 struct ov772x_priv *priv = to_ov772x(sd);
 int ret = 0;

 mutex_lock(&priv->lock);




 if (priv->power_count == !on) {
  if (on) {
   ret = ov772x_power_on(priv);




   if (!ret)
    ret = ov772x_set_params(priv, priv->cfmt,
       priv->win);
  } else {
   ret = ov772x_power_off(priv);
  }
 }

 if (!ret) {

  priv->power_count += on ? 1 : -1;
  WARN(priv->power_count < 0, "Unbalanced power count\n");
  WARN(priv->power_count > 1, "Duplicated s_power call\n");
 }

 mutex_unlock(&priv->lock);

 return ret;
}
