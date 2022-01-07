
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sdhci_cdns_priv {struct sdhci_cdns_phy_param* phy_params; } ;
struct sdhci_cdns_phy_param {int data; int addr; } ;
struct device_node {int dummy; } ;
struct TYPE_3__ {int addr; int property; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int of_property_read_u32 (struct device_node*,int ,int *) ;
 TYPE_1__* sdhci_cdns_phy_cfgs ;

__attribute__((used)) static void sdhci_cdns_phy_param_parse(struct device_node *np,
           struct sdhci_cdns_priv *priv)
{
 struct sdhci_cdns_phy_param *p = priv->phy_params;
 u32 val;
 int ret, i;

 for (i = 0; i < ARRAY_SIZE(sdhci_cdns_phy_cfgs); i++) {
  ret = of_property_read_u32(np, sdhci_cdns_phy_cfgs[i].property,
        &val);
  if (ret)
   continue;

  p->addr = sdhci_cdns_phy_cfgs[i].addr;
  p->data = val;
  p++;
 }
}
