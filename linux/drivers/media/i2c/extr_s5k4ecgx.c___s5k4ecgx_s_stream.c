
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5k4ecgx {scalar_t__ set_params; int sd; } ;
struct i2c_client {int dummy; } ;


 int REG_G_ENABLE_PREV ;
 int REG_G_ENABLE_PREV_CHG ;
 int __s5k4ecgx_s_params (struct s5k4ecgx*) ;
 int s5k4ecgx_write (struct i2c_client*,int ,int) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static int __s5k4ecgx_s_stream(struct s5k4ecgx *priv, int on)
{
 struct i2c_client *client = v4l2_get_subdevdata(&priv->sd);
 int ret;

 if (on && priv->set_params) {
  ret = __s5k4ecgx_s_params(priv);
  if (ret < 0)
   return ret;
  priv->set_params = 0;
 }




 ret = s5k4ecgx_write(client, REG_G_ENABLE_PREV, on);
 if (ret < 0)
  return ret;
 return s5k4ecgx_write(client, REG_G_ENABLE_PREV_CHG, 1);
}
