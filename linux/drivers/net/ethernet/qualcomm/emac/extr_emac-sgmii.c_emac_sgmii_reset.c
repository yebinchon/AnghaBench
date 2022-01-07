
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* sgmii_ops; } ;
struct emac_adapter {TYPE_2__ phy; } ;
struct TYPE_3__ {int (* reset ) (struct emac_adapter*) ;} ;


 int stub1 (struct emac_adapter*) ;

void emac_sgmii_reset(struct emac_adapter *adpt)
{
 if (!(adpt->phy.sgmii_ops && adpt->phy.sgmii_ops->reset))
  return;

 adpt->phy.sgmii_ops->reset(adpt);
}
