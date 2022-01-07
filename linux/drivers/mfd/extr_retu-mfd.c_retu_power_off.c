
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct retu_dev {int mutex; int regmap; } ;


 int RETU_REG_CC1 ;
 int RETU_REG_WATCHDOG ;
 int cpu_relax () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_write (int ,int ,int) ;
 struct retu_dev* retu_pm_power_off ;

__attribute__((used)) static void retu_power_off(void)
{
 struct retu_dev *rdev = retu_pm_power_off;
 int reg;

 mutex_lock(&retu_pm_power_off->mutex);


 regmap_read(rdev->regmap, RETU_REG_CC1, &reg);
 regmap_write(rdev->regmap, RETU_REG_CC1, reg | 2);


 regmap_write(rdev->regmap, RETU_REG_WATCHDOG, 0);


 for (;;)
  cpu_relax();

 mutex_unlock(&retu_pm_power_off->mutex);
}
