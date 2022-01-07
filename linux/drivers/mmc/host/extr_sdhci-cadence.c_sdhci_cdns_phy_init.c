
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdhci_cdns_priv {int nr_phy_params; TYPE_1__* phy_params; } ;
struct TYPE_2__ {int data; int addr; } ;


 int sdhci_cdns_write_phy_reg (struct sdhci_cdns_priv*,int ,int ) ;

__attribute__((used)) static int sdhci_cdns_phy_init(struct sdhci_cdns_priv *priv)
{
 int ret, i;

 for (i = 0; i < priv->nr_phy_params; i++) {
  ret = sdhci_cdns_write_phy_reg(priv, priv->phy_params[i].addr,
            priv->phy_params[i].data);
  if (ret)
   return ret;
 }

 return 0;
}
