
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nand_data_interface {int dummy; } ;
struct atmel_smc_cs_conf {int timings; } ;
struct TYPE_5__ {scalar_t__ type; int id; } ;
struct atmel_nand_cs {struct atmel_smc_cs_conf smcconf; int id; TYPE_2__ rb; } ;
struct TYPE_4__ {int controller; } ;
struct atmel_nand {struct atmel_nand_cs* cs; TYPE_1__ base; } ;
struct TYPE_6__ {int smc; } ;
struct atmel_hsmc_nand_controller {int hsmc_layout; TYPE_3__ base; } ;


 int ATMEL_HSMC_TIMINGS_RBNSEL (int ) ;
 scalar_t__ ATMEL_NAND_NATIVE_RB ;
 int NAND_DATA_IFACE_CHECK_ONLY ;
 int atmel_hsmc_cs_conf_apply (int ,int ,int ,struct atmel_smc_cs_conf*) ;
 int atmel_smc_nand_prepare_smcconf (struct atmel_nand*,struct nand_data_interface const*,struct atmel_smc_cs_conf*) ;
 struct atmel_hsmc_nand_controller* to_hsmc_nand_controller (int ) ;

__attribute__((used)) static int atmel_hsmc_nand_setup_data_interface(struct atmel_nand *nand,
     int csline,
     const struct nand_data_interface *conf)
{
 struct atmel_hsmc_nand_controller *nc;
 struct atmel_smc_cs_conf smcconf;
 struct atmel_nand_cs *cs;
 int ret;

 nc = to_hsmc_nand_controller(nand->base.controller);

 ret = atmel_smc_nand_prepare_smcconf(nand, conf, &smcconf);
 if (ret)
  return ret;

 if (csline == NAND_DATA_IFACE_CHECK_ONLY)
  return 0;

 cs = &nand->cs[csline];
 cs->smcconf = smcconf;

 if (cs->rb.type == ATMEL_NAND_NATIVE_RB)
  cs->smcconf.timings |= ATMEL_HSMC_TIMINGS_RBNSEL(cs->rb.id);

 atmel_hsmc_cs_conf_apply(nc->base.smc, nc->hsmc_layout, cs->id,
     &cs->smcconf);

 return 0;
}
