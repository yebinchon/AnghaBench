
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;
struct gpio_desc {int dummy; } ;
struct fixed_phy_status {int dummy; } ;


 struct phy_device* __fixed_phy_register (unsigned int,struct fixed_phy_status*,int *,struct gpio_desc*) ;

struct phy_device *
fixed_phy_register_with_gpiod(unsigned int irq,
         struct fixed_phy_status *status,
         struct gpio_desc *gpiod)
{
 return __fixed_phy_register(irq, status, ((void*)0), gpiod);
}
