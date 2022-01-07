
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct adv7180_state {scalar_t__ irq; int mutex; TYPE_1__* chip_info; } ;
struct TYPE_2__ {int (* init ) (struct adv7180_state*) ;} ;


 int ADV7180_ICONF1_ACTIVE_LOW ;
 int ADV7180_ICONF1_PSYNC_ONLY ;
 int ADV7180_IRQ3_AD_CHANGE ;
 int ADV7180_PWR_MAN_RES ;
 int ADV7180_REG_ICONF1 ;
 int ADV7180_REG_IMR1 ;
 int ADV7180_REG_IMR2 ;
 int ADV7180_REG_IMR3 ;
 int ADV7180_REG_IMR4 ;
 int ADV7180_REG_PWR_MAN ;
 int adv7180_program_std (struct adv7180_state*) ;
 int adv7180_set_field_mode (struct adv7180_state*) ;
 int adv7180_set_power_pin (struct adv7180_state*,int) ;
 int adv7180_write (struct adv7180_state*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct adv7180_state*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int init_device(struct adv7180_state *state)
{
 int ret;

 mutex_lock(&state->mutex);

 adv7180_set_power_pin(state, 1);

 adv7180_write(state, ADV7180_REG_PWR_MAN, ADV7180_PWR_MAN_RES);
 usleep_range(5000, 10000);

 ret = state->chip_info->init(state);
 if (ret)
  goto out_unlock;

 ret = adv7180_program_std(state);
 if (ret)
  goto out_unlock;

 adv7180_set_field_mode(state);


 if (state->irq > 0) {

  ret = adv7180_write(state, ADV7180_REG_ICONF1,
      ADV7180_ICONF1_ACTIVE_LOW |
      ADV7180_ICONF1_PSYNC_ONLY);
  if (ret < 0)
   goto out_unlock;

  ret = adv7180_write(state, ADV7180_REG_IMR1, 0);
  if (ret < 0)
   goto out_unlock;

  ret = adv7180_write(state, ADV7180_REG_IMR2, 0);
  if (ret < 0)
   goto out_unlock;


  ret = adv7180_write(state, ADV7180_REG_IMR3,
      ADV7180_IRQ3_AD_CHANGE);
  if (ret < 0)
   goto out_unlock;

  ret = adv7180_write(state, ADV7180_REG_IMR4, 0);
  if (ret < 0)
   goto out_unlock;
 }

out_unlock:
 mutex_unlock(&state->mutex);

 return ret;
}
