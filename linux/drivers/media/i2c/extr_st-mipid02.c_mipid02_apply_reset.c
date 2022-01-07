
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mipid02_dev {int reset_gpio; } ;


 int gpiod_set_value_cansleep (int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void mipid02_apply_reset(struct mipid02_dev *bridge)
{
 gpiod_set_value_cansleep(bridge->reset_gpio, 0);
 usleep_range(5000, 10000);
 gpiod_set_value_cansleep(bridge->reset_gpio, 1);
 usleep_range(5000, 10000);
 gpiod_set_value_cansleep(bridge->reset_gpio, 0);
 usleep_range(5000, 10000);
}
