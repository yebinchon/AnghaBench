
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct at86rf230_local {int sleep; TYPE_1__* data; int slp_tr; } ;
struct TYPE_2__ {scalar_t__ t_sleep_to_off; } ;


 scalar_t__ gpio_is_valid (int ) ;
 int gpio_set_value (int ,int ) ;
 int usleep_range (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void
at86rf230_awake(struct at86rf230_local *lp)
{
 if (gpio_is_valid(lp->slp_tr)) {
  gpio_set_value(lp->slp_tr, 0);
  usleep_range(lp->data->t_sleep_to_off,
        lp->data->t_sleep_to_off + 100);
  lp->sleep = 0;
 }
}
