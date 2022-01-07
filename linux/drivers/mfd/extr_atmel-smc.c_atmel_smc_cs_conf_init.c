
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_smc_cs_conf {int dummy; } ;


 int memset (struct atmel_smc_cs_conf*,int ,int) ;

void atmel_smc_cs_conf_init(struct atmel_smc_cs_conf *conf)
{
 memset(conf, 0, sizeof(*conf));
}
