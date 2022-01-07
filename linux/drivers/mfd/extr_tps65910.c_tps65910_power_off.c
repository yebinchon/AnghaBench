
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tps65910 {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int DEVCTRL_DEV_ON_MASK ;
 int DEVCTRL_PWR_OFF_MASK ;
 int TPS65910_DEVCTRL ;
 struct tps65910* dev_get_drvdata (int *) ;
 TYPE_1__* tps65910_i2c_client ;
 int tps65910_reg_clear_bits (struct tps65910*,int ,int ) ;
 scalar_t__ tps65910_reg_set_bits (struct tps65910*,int ,int ) ;

__attribute__((used)) static void tps65910_power_off(void)
{
 struct tps65910 *tps65910;

 tps65910 = dev_get_drvdata(&tps65910_i2c_client->dev);

 if (tps65910_reg_set_bits(tps65910, TPS65910_DEVCTRL,
   DEVCTRL_PWR_OFF_MASK) < 0)
  return;

 tps65910_reg_clear_bits(tps65910, TPS65910_DEVCTRL,
   DEVCTRL_DEV_ON_MASK);
}
