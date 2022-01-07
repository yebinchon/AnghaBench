
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max77620_chip {int chip_id; } ;


 int EINVAL ;

 int MAX20024_FPS_PERIOD_MIN_US ;

 int MAX77620_FPS_PERIOD_MIN_US ;


__attribute__((used)) static int max77620_get_fps_period_reg_value(struct max77620_chip *chip,
          int tperiod)
{
 int fps_min_period;
 int i;

 switch (chip->chip_id) {
 case 130:
  fps_min_period = MAX20024_FPS_PERIOD_MIN_US;
  break;
 case 129:
  fps_min_period = MAX77620_FPS_PERIOD_MIN_US;
  break;
 case 128:
  fps_min_period = MAX20024_FPS_PERIOD_MIN_US;
  break;
 default:
  return -EINVAL;
 }

 for (i = 0; i < 7; i++) {
  if (fps_min_period >= tperiod)
   return i;
  fps_min_period *= 2;
 }

 return i;
}
