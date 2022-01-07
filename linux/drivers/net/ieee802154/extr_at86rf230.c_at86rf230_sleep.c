
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct at86rf230_local {int sleep; TYPE_1__* data; int slp_tr; } ;
struct TYPE_2__ {scalar_t__ t_off_to_sleep; } ;


 scalar_t__ gpio_is_valid (int ) ;
 int gpio_set_value (int ,int) ;
 int usleep_range (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void
at86rf230_sleep(struct at86rf230_local *lp)
{
 if (gpio_is_valid(lp->slp_tr)) {
  gpio_set_value(lp->slp_tr, 1);
  usleep_range(lp->data->t_off_to_sleep,
        lp->data->t_off_to_sleep + 10);
  lp->sleep = 1;
 }
}
