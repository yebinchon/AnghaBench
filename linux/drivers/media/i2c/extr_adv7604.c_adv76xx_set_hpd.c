
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct adv76xx_state {int sd; int * hpd_gpio; TYPE_1__* info; } ;
struct TYPE_2__ {unsigned int num_dv_ports; } ;


 int ADV76XX_HOTPLUG ;
 unsigned int BIT (unsigned int) ;
 int gpiod_set_value_cansleep (int ,unsigned int) ;
 int v4l2_subdev_notify (int *,int ,unsigned int*) ;

__attribute__((used)) static void adv76xx_set_hpd(struct adv76xx_state *state, unsigned int hpd)
{
 unsigned int i;

 for (i = 0; i < state->info->num_dv_ports; ++i)
  gpiod_set_value_cansleep(state->hpd_gpio[i], hpd & BIT(i));

 v4l2_subdev_notify(&state->sd, ADV76XX_HOTPLUG, &hpd);
}
