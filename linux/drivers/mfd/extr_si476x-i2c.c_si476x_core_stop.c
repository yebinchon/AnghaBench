
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct si476x_power_down_args {int xosc; } ;
struct si476x_core {int gpio_reset; int status_monitor; TYPE_1__* client; int is_alive; } ;
struct TYPE_2__ {scalar_t__ irq; } ;


 int atomic_set (int *,int ) ;
 int cancel_delayed_work_sync (int *) ;
 int disable_irq (scalar_t__) ;
 scalar_t__ gpio_is_valid (int ) ;
 int gpio_set_value_cansleep (int ,int ) ;
 int si476x_core_cmd_power_down (struct si476x_core*,struct si476x_power_down_args*) ;

int si476x_core_stop(struct si476x_core *core, bool soft)
{
 int err = 0;
 atomic_set(&core->is_alive, 0);

 if (soft) {




  struct si476x_power_down_args args = {
   .xosc = 0,
  };
  err = si476x_core_cmd_power_down(core, &args);
 }




 if (core->client->irq)
  disable_irq(core->client->irq);
 else
  cancel_delayed_work_sync(&core->status_monitor);

 if (!soft) {
  if (gpio_is_valid(core->gpio_reset))
   gpio_set_value_cansleep(core->gpio_reset, 0);
 }
 return err;
}
