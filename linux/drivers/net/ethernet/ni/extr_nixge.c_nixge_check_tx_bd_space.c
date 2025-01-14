
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nixge_priv {int tx_bd_tail; struct nixge_hw_dma_bd* tx_bd_v; } ;
struct nixge_hw_dma_bd {int status; } ;


 int NETDEV_TX_BUSY ;
 int TX_BD_NUM ;
 int XAXIDMA_BD_STS_ALL_MASK ;

__attribute__((used)) static int nixge_check_tx_bd_space(struct nixge_priv *priv,
       int num_frag)
{
 struct nixge_hw_dma_bd *cur_p;

 cur_p = &priv->tx_bd_v[(priv->tx_bd_tail + num_frag) % TX_BD_NUM];
 if (cur_p->status & XAXIDMA_BD_STS_ALL_MASK)
  return NETDEV_TX_BUSY;
 return 0;
}
