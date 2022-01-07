
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sdhci_sprd_host {int* phy_delay; } ;
struct device_node {int dummy; } ;
struct TYPE_3__ {int timing; int property; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int of_property_read_u32_array (struct device_node*,int ,int*,int) ;
 TYPE_1__* sdhci_sprd_phy_cfgs ;

__attribute__((used)) static void sdhci_sprd_phy_param_parse(struct sdhci_sprd_host *sprd_host,
           struct device_node *np)
{
 u32 *p = sprd_host->phy_delay;
 int ret, i, index;
 u32 val[4];

 for (i = 0; i < ARRAY_SIZE(sdhci_sprd_phy_cfgs); i++) {
  ret = of_property_read_u32_array(np,
    sdhci_sprd_phy_cfgs[i].property, val, 4);
  if (ret)
   continue;

  index = sdhci_sprd_phy_cfgs[i].timing;
  p[index] = val[0] | (val[1] << 8) | (val[2] << 16) | (val[3] << 24);
 }
}
