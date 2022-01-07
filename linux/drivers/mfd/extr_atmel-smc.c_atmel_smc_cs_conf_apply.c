
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct atmel_smc_cs_conf {int mode; int cycle; int pulse; int setup; } ;


 int ATMEL_SMC_CYCLE (int) ;
 int ATMEL_SMC_MODE (int) ;
 int ATMEL_SMC_PULSE (int) ;
 int ATMEL_SMC_SETUP (int) ;
 int regmap_write (struct regmap*,int ,int ) ;

void atmel_smc_cs_conf_apply(struct regmap *regmap, int cs,
        const struct atmel_smc_cs_conf *conf)
{
 regmap_write(regmap, ATMEL_SMC_SETUP(cs), conf->setup);
 regmap_write(regmap, ATMEL_SMC_PULSE(cs), conf->pulse);
 regmap_write(regmap, ATMEL_SMC_CYCLE(cs), conf->cycle);
 regmap_write(regmap, ATMEL_SMC_MODE(cs), conf->mode);
}
