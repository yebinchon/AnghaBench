
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nand_data_interface {int dummy; } ;
struct atmel_smc_cs_conf {int dummy; } ;
struct atmel_nand_cs {struct atmel_smc_cs_conf smcconf; int id; } ;
struct atmel_nand_controller {int smc; } ;
struct TYPE_2__ {int controller; } ;
struct atmel_nand {struct atmel_nand_cs* cs; TYPE_1__ base; } ;


 int NAND_DATA_IFACE_CHECK_ONLY ;
 int atmel_smc_cs_conf_apply (int ,int ,struct atmel_smc_cs_conf*) ;
 int atmel_smc_nand_prepare_smcconf (struct atmel_nand*,struct nand_data_interface const*,struct atmel_smc_cs_conf*) ;
 struct atmel_nand_controller* to_nand_controller (int ) ;

__attribute__((used)) static int atmel_smc_nand_setup_data_interface(struct atmel_nand *nand,
     int csline,
     const struct nand_data_interface *conf)
{
 struct atmel_nand_controller *nc;
 struct atmel_smc_cs_conf smcconf;
 struct atmel_nand_cs *cs;
 int ret;

 nc = to_nand_controller(nand->base.controller);

 ret = atmel_smc_nand_prepare_smcconf(nand, conf, &smcconf);
 if (ret)
  return ret;

 if (csline == NAND_DATA_IFACE_CHECK_ONLY)
  return 0;

 cs = &nand->cs[csline];
 cs->smcconf = smcconf;
 atmel_smc_cs_conf_apply(nc->smc, cs->id, &cs->smcconf);

 return 0;
}
