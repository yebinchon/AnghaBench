
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct atmel_ebi_dev_config {int smcconf; int cs; } ;
struct atmel_ebi_dev {TYPE_2__* ebi; } ;
struct TYPE_3__ {int layout; int regmap; } ;
struct TYPE_4__ {TYPE_1__ smc; } ;


 int atmel_hsmc_cs_conf_get (int ,int ,int ,int *) ;

__attribute__((used)) static void sama5_ebi_get_config(struct atmel_ebi_dev *ebid,
     struct atmel_ebi_dev_config *conf)
{
 atmel_hsmc_cs_conf_get(ebid->ebi->smc.regmap, ebid->ebi->smc.layout,
          conf->cs, &conf->smcconf);
}
