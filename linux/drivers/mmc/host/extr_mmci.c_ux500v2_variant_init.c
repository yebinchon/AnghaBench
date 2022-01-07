
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmci_host {TYPE_1__* ops; } ;
struct TYPE_2__ {int get_datactrl_cfg; } ;


 TYPE_1__ mmci_variant_ops ;
 int ux500v2_get_dctrl_cfg ;

void ux500v2_variant_init(struct mmci_host *host)
{
 host->ops = &mmci_variant_ops;
 host->ops->get_datactrl_cfg = ux500v2_get_dctrl_cfg;
}
