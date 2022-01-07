
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nr; } ;
struct bttv {TYPE_1__ c; } ;


 scalar_t__ bttv_gpio ;
 int bttv_gpio_tracking (struct bttv*,char*) ;
 scalar_t__ bttv_verbose ;
 int gpio_bits (int,int) ;
 int gpio_inout (int,int) ;
 int mdelay (int) ;
 int pr_info (char*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void boot_msp34xx(struct bttv *btv, int pin)
{
 int mask = (1 << pin);

 gpio_inout(mask,mask);
 gpio_bits(mask,0);
 mdelay(2);
 udelay(500);
 gpio_bits(mask,mask);

 if (bttv_gpio)
  bttv_gpio_tracking(btv,"msp34xx");
 if (bttv_verbose)
  pr_info("%d: Hauppauge/Voodoo msp34xx: reset line init [%d]\n",
   btv->c.nr, pin);
}
