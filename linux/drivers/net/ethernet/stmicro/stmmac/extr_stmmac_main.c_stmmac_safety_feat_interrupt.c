
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int asp; } ;
struct stmmac_priv {int sstats; TYPE_1__ dma_cap; int ioaddr; int dev; } ;


 int EINVAL ;
 int stmmac_global_err (struct stmmac_priv*) ;
 int stmmac_safety_feat_irq_status (struct stmmac_priv*,int ,int ,int ,int *) ;

__attribute__((used)) static bool stmmac_safety_feat_interrupt(struct stmmac_priv *priv)
{
 int ret;

 ret = stmmac_safety_feat_irq_status(priv, priv->dev,
   priv->ioaddr, priv->dma_cap.asp, &priv->sstats);
 if (ret && (ret != -EINVAL)) {
  stmmac_global_err(priv);
  return 1;
 }

 return 0;
}
