
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dev; } ;
struct buffer_state {int * skb; } ;
struct arc_emac_priv {struct buffer_state* tx_buff; struct arc_emac_bd* txbd; } ;
struct arc_emac_bd {scalar_t__ data; scalar_t__ info; } ;


 int DMA_TO_DEVICE ;
 unsigned int TX_BD_NUM ;
 int addr ;
 int dev_kfree_skb_irq (int *) ;
 int dma_unmap_addr (struct buffer_state*,int ) ;
 int dma_unmap_len (struct buffer_state*,int ) ;
 int dma_unmap_single (int *,int ,int ,int ) ;
 int len ;
 struct arc_emac_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void arc_free_tx_queue(struct net_device *ndev)
{
 struct arc_emac_priv *priv = netdev_priv(ndev);
 unsigned int i;

 for (i = 0; i < TX_BD_NUM; i++) {
  struct arc_emac_bd *txbd = &priv->txbd[i];
  struct buffer_state *tx_buff = &priv->tx_buff[i];

  if (tx_buff->skb) {
   dma_unmap_single(&ndev->dev,
      dma_unmap_addr(tx_buff, addr),
      dma_unmap_len(tx_buff, len),
      DMA_TO_DEVICE);


   dev_kfree_skb_irq(tx_buff->skb);
  }

  txbd->info = 0;
  txbd->data = 0;
  tx_buff->skb = ((void*)0);
 }
}
