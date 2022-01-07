
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pxa168_eth_private {scalar_t__ tx_used_desc_q; scalar_t__ tx_curr_desc_q; int tx_skb; int tx_desc_dma; scalar_t__ p_tx_desc_area; int tx_desc_area_size; TYPE_2__* dev; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int BUG_ON (int) ;
 int dma_free_coherent (int ,int ,scalar_t__,int ) ;
 int kfree (int ) ;
 struct pxa168_eth_private* netdev_priv (struct net_device*) ;
 int txq_reclaim (struct net_device*,int) ;

__attribute__((used)) static void txq_deinit(struct net_device *dev)
{
 struct pxa168_eth_private *pep = netdev_priv(dev);


 txq_reclaim(dev, 1);
 BUG_ON(pep->tx_used_desc_q != pep->tx_curr_desc_q);

 if (pep->p_tx_desc_area)
  dma_free_coherent(pep->dev->dev.parent, pep->tx_desc_area_size,
      pep->p_tx_desc_area, pep->tx_desc_dma);
 kfree(pep->tx_skb);
}
