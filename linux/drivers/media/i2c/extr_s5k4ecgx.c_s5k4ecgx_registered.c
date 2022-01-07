
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct s5k4ecgx {int lock; } ;


 int __s5k4ecgx_power_off (struct s5k4ecgx*) ;
 int __s5k4ecgx_power_on (struct s5k4ecgx*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int s5k4ecgx_read_fw_ver (struct v4l2_subdev*) ;
 struct s5k4ecgx* to_s5k4ecgx (struct v4l2_subdev*) ;

__attribute__((used)) static int s5k4ecgx_registered(struct v4l2_subdev *sd)
{
 int ret;
 struct s5k4ecgx *priv = to_s5k4ecgx(sd);

 mutex_lock(&priv->lock);
 ret = __s5k4ecgx_power_on(priv);
 if (!ret) {
  ret = s5k4ecgx_read_fw_ver(sd);
  __s5k4ecgx_power_off(priv);
 }
 mutex_unlock(&priv->lock);

 return ret;
}
