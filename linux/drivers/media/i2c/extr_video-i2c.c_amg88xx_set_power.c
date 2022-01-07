
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_i2c_data {int dummy; } ;


 int amg88xx_set_power_off (struct video_i2c_data*) ;
 int amg88xx_set_power_on (struct video_i2c_data*) ;

__attribute__((used)) static int amg88xx_set_power(struct video_i2c_data *data, bool on)
{
 if (on)
  return amg88xx_set_power_on(data);

 return amg88xx_set_power_off(data);
}
