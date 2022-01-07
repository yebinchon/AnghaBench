
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfp {int dummy; } ;


 unsigned int SFP_F_PRESENT ;
 unsigned int sfp_gpio_get_state (struct sfp*) ;

__attribute__((used)) static unsigned int sff_gpio_get_state(struct sfp *sfp)
{
 return sfp_gpio_get_state(sfp) | SFP_F_PRESENT;
}
