
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct ov5645 {int power_count; int power_lock; int dev; } ;


 int ARRAY_SIZE (int ) ;
 int OV5645_IO_MIPI_CTRL00 ;
 int WARN_ON (int) ;
 int dev_err (int ,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ov5645_global_init_setting ;
 int ov5645_set_power_off (struct ov5645*) ;
 int ov5645_set_power_on (struct ov5645*) ;
 int ov5645_set_register_array (struct ov5645*,int ,int ) ;
 int ov5645_write_reg (struct ov5645*,int ,int) ;
 struct ov5645* to_ov5645 (struct v4l2_subdev*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int ov5645_s_power(struct v4l2_subdev *sd, int on)
{
 struct ov5645 *ov5645 = to_ov5645(sd);
 int ret = 0;

 mutex_lock(&ov5645->power_lock);




 if (ov5645->power_count == !on) {
  if (on) {
   ret = ov5645_set_power_on(ov5645);
   if (ret < 0)
    goto exit;

   ret = ov5645_set_register_array(ov5645,
     ov5645_global_init_setting,
     ARRAY_SIZE(ov5645_global_init_setting));
   if (ret < 0) {
    dev_err(ov5645->dev,
     "could not set init registers\n");
    ov5645_set_power_off(ov5645);
    goto exit;
   }

   usleep_range(500, 1000);
  } else {
   ov5645_write_reg(ov5645, OV5645_IO_MIPI_CTRL00, 0x58);
   ov5645_set_power_off(ov5645);
  }
 }


 ov5645->power_count += on ? 1 : -1;
 WARN_ON(ov5645->power_count < 0);

exit:
 mutex_unlock(&ov5645->power_lock);

 return ret;
}
