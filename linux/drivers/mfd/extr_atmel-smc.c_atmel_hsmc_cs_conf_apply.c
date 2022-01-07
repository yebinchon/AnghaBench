
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct atmel_smc_cs_conf {int mode; int timings; int cycle; int pulse; int setup; } ;
struct atmel_hsmc_reg_layout {int dummy; } ;


 int ATMEL_HSMC_CYCLE (struct atmel_hsmc_reg_layout const*,int) ;
 int ATMEL_HSMC_MODE (struct atmel_hsmc_reg_layout const*,int) ;
 int ATMEL_HSMC_PULSE (struct atmel_hsmc_reg_layout const*,int) ;
 int ATMEL_HSMC_SETUP (struct atmel_hsmc_reg_layout const*,int) ;
 int ATMEL_HSMC_TIMINGS (struct atmel_hsmc_reg_layout const*,int) ;
 int regmap_write (struct regmap*,int ,int ) ;

void atmel_hsmc_cs_conf_apply(struct regmap *regmap,
         const struct atmel_hsmc_reg_layout *layout,
         int cs, const struct atmel_smc_cs_conf *conf)
{
 regmap_write(regmap, ATMEL_HSMC_SETUP(layout, cs), conf->setup);
 regmap_write(regmap, ATMEL_HSMC_PULSE(layout, cs), conf->pulse);
 regmap_write(regmap, ATMEL_HSMC_CYCLE(layout, cs), conf->cycle);
 regmap_write(regmap, ATMEL_HSMC_TIMINGS(layout, cs), conf->timings);
 regmap_write(regmap, ATMEL_HSMC_MODE(layout, cs), conf->mode);
}
