
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmmac_priv {int dma_cap; int ioaddr; } ;


 scalar_t__ stmmac_get_hw_feature (struct stmmac_priv*,int ,int *) ;

__attribute__((used)) static int stmmac_get_hw_features(struct stmmac_priv *priv)
{
 return stmmac_get_hw_feature(priv, priv->ioaddr, &priv->dma_cap) == 0;
}
