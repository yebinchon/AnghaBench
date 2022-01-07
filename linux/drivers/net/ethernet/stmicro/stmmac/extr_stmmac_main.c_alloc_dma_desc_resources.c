
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmmac_priv {int dummy; } ;


 int alloc_dma_rx_desc_resources (struct stmmac_priv*) ;
 int alloc_dma_tx_desc_resources (struct stmmac_priv*) ;

__attribute__((used)) static int alloc_dma_desc_resources(struct stmmac_priv *priv)
{

 int ret = alloc_dma_rx_desc_resources(priv);

 if (ret)
  return ret;

 ret = alloc_dma_tx_desc_resources(priv);

 return ret;
}
