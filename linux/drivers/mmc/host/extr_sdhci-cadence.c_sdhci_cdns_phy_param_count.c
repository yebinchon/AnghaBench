
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct device_node {int dummy; } ;
struct TYPE_3__ {int property; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 scalar_t__ of_property_read_bool (struct device_node*,int ) ;
 TYPE_1__* sdhci_cdns_phy_cfgs ;

__attribute__((used)) static unsigned int sdhci_cdns_phy_param_count(struct device_node *np)
{
 unsigned int count = 0;
 int i;

 for (i = 0; i < ARRAY_SIZE(sdhci_cdns_phy_cfgs); i++)
  if (of_property_read_bool(np, sdhci_cdns_phy_cfgs[i].property))
   count++;

 return count;
}
