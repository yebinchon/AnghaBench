
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmmac_priv {int dummy; } ;


 int free_dma_rx_desc_resources (struct stmmac_priv*) ;
 int free_dma_tx_desc_resources (struct stmmac_priv*) ;

__attribute__((used)) static void free_dma_desc_resources(struct stmmac_priv *priv)
{

 free_dma_rx_desc_resources(priv);


 free_dma_tx_desc_resources(priv);
}
