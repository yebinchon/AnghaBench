
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lan9303 {scalar_t__ reset_duration; int reset_gpio; } ;


 int gpiod_set_value_cansleep (int ,int ) ;
 int msleep (scalar_t__) ;

__attribute__((used)) static void lan9303_handle_reset(struct lan9303 *chip)
{
 if (!chip->reset_gpio)
  return;

 if (chip->reset_duration != 0)
  msleep(chip->reset_duration);


 gpiod_set_value_cansleep(chip->reset_gpio, 0);
}
