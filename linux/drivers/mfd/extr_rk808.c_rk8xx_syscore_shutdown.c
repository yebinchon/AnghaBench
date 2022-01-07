
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct rk808 {scalar_t__ variant; int regmap; } ;
struct TYPE_3__ {int dev; } ;


 scalar_t__ RK809_ID ;
 scalar_t__ RK817_ID ;
 int RK817_SLPPIN_FUNC_MSK ;
 int RK817_SYS_CFG (int) ;
 int SLPPIN_DN_FUN ;
 scalar_t__ SYSTEM_POWER_OFF ;
 int dev_warn (int *,char*) ;
 struct rk808* i2c_get_clientdata (TYPE_1__*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 TYPE_1__* rk808_i2c_client ;
 scalar_t__ system_state ;

__attribute__((used)) static void rk8xx_syscore_shutdown(void)
{
 struct rk808 *rk808 = i2c_get_clientdata(rk808_i2c_client);
 int ret;

 if (system_state == SYSTEM_POWER_OFF &&
     (rk808->variant == RK809_ID || rk808->variant == RK817_ID)) {
  ret = regmap_update_bits(rk808->regmap,
      RK817_SYS_CFG(3),
      RK817_SLPPIN_FUNC_MSK,
      SLPPIN_DN_FUN);
  if (ret) {
   dev_warn(&rk808_i2c_client->dev,
     "Cannot switch to power down function\n");
  }
 }
}
