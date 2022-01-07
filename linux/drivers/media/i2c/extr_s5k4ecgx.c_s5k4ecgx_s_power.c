
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct s5k4ecgx {int set_params; } ;


 int __s5k4ecgx_power_off (struct s5k4ecgx*) ;
 int __s5k4ecgx_power_on (struct s5k4ecgx*) ;
 int debug ;
 int msleep (int) ;
 int s5k4ecgx_init_sensor (struct v4l2_subdev*) ;
 struct s5k4ecgx* to_s5k4ecgx (struct v4l2_subdev*) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,char*) ;

__attribute__((used)) static int s5k4ecgx_s_power(struct v4l2_subdev *sd, int on)
{
 struct s5k4ecgx *priv = to_s5k4ecgx(sd);
 int ret;

 v4l2_dbg(1, debug, sd, "Switching %s\n", on ? "on" : "off");

 if (on) {
  ret = __s5k4ecgx_power_on(priv);
  if (ret < 0)
   return ret;

  msleep(100);
  ret = s5k4ecgx_init_sensor(sd);
  if (ret < 0)
   __s5k4ecgx_power_off(priv);
  else
   priv->set_params = 1;
 } else {
  ret = __s5k4ecgx_power_off(priv);
 }

 return ret;
}
