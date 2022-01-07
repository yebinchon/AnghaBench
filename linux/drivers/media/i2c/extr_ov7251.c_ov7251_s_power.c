
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct ov7251 {int power_on; int lock; int dev; } ;


 int ARRAY_SIZE (int ) ;
 int dev_err (int ,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ov7251_global_init_setting ;
 int ov7251_set_power_off (struct ov7251*) ;
 int ov7251_set_power_on (struct ov7251*) ;
 int ov7251_set_register_array (struct ov7251*,int ,int ) ;
 struct ov7251* to_ov7251 (struct v4l2_subdev*) ;

__attribute__((used)) static int ov7251_s_power(struct v4l2_subdev *sd, int on)
{
 struct ov7251 *ov7251 = to_ov7251(sd);
 int ret = 0;

 mutex_lock(&ov7251->lock);


 if (ov7251->power_on == !!on)
  goto exit;

 if (on) {
  ret = ov7251_set_power_on(ov7251);
  if (ret < 0)
   goto exit;

  ret = ov7251_set_register_array(ov7251,
     ov7251_global_init_setting,
     ARRAY_SIZE(ov7251_global_init_setting));
  if (ret < 0) {
   dev_err(ov7251->dev, "could not set init registers\n");
   ov7251_set_power_off(ov7251);
   goto exit;
  }

  ov7251->power_on = 1;
 } else {
  ov7251_set_power_off(ov7251);
  ov7251->power_on = 0;
 }

exit:
 mutex_unlock(&ov7251->lock);

 return ret;
}
