
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ asp; } ;
struct stmmac_priv {int dev; TYPE_1__ dma_cap; int ioaddr; } ;


 int netdev_info (int ,char*) ;
 int stmmac_safety_feat_config (struct stmmac_priv*,int ,scalar_t__) ;

__attribute__((used)) static void stmmac_safety_feat_configuration(struct stmmac_priv *priv)
{
 if (priv->dma_cap.asp) {
  netdev_info(priv->dev, "Enabling Safety Features\n");
  stmmac_safety_feat_config(priv, priv->ioaddr, priv->dma_cap.asp);
 } else {
  netdev_info(priv->dev, "No Safety Features support found\n");
 }
}
