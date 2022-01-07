
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ e100_base_fx; scalar_t__ e100_base_lx; scalar_t__ e1000_base_t; } ;
struct TYPE_4__ {TYPE_1__ base; } ;
struct sfp {int sm_retries; TYPE_2__ id; } ;


 int SFP_S_INIT ;
 int T_INIT_JIFFIES ;
 int sfp_module_tx_enable (struct sfp*) ;
 int sfp_sm_next (struct sfp*,int ,int ) ;
 int sfp_sm_probe_phy (struct sfp*) ;

__attribute__((used)) static void sfp_sm_mod_init(struct sfp *sfp)
{
 sfp_module_tx_enable(sfp);





 sfp_sm_next(sfp, SFP_S_INIT, T_INIT_JIFFIES);
 sfp->sm_retries = 5;
 if (sfp->id.base.e1000_base_t ||
     sfp->id.base.e100_base_lx ||
     sfp->id.base.e100_base_fx)
  sfp_sm_probe_phy(sfp);
}
