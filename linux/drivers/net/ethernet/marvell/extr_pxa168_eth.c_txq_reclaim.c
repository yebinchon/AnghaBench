
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct tx_desc {int cmd_sts; int byte_cnt; int buf_ptr; } ;
struct sk_buff {int dummy; } ;
struct pxa168_eth_private {scalar_t__ tx_desc_count; int tx_used_desc_q; int tx_ring_size; TYPE_2__* pdev; struct sk_buff** tx_skb; struct tx_desc* p_tx_desc_area; int work_todo; } ;
struct TYPE_3__ {int tx_errors; } ;
struct net_device {TYPE_1__ stats; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {int dev; } ;


 int BUF_OWNED_BY_DMA ;
 int DMA_TO_DEVICE ;
 int TX_ERROR ;
 int WORK_TX_DONE ;
 int dev_kfree_skb_irq (struct sk_buff*) ;
 int dma_unmap_single (int *,int ,int,int ) ;
 scalar_t__ net_ratelimit () ;
 int netdev_err (struct net_device*,char*) ;
 struct pxa168_eth_private* netdev_priv (struct net_device*) ;
 int netif_tx_lock (struct net_device*) ;
 int netif_tx_unlock (struct net_device*) ;

__attribute__((used)) static int txq_reclaim(struct net_device *dev, int force)
{
 struct pxa168_eth_private *pep = netdev_priv(dev);
 struct tx_desc *desc;
 u32 cmd_sts;
 struct sk_buff *skb;
 int tx_index;
 dma_addr_t addr;
 int count;
 int released = 0;

 netif_tx_lock(dev);

 pep->work_todo &= ~WORK_TX_DONE;
 while (pep->tx_desc_count > 0) {
  tx_index = pep->tx_used_desc_q;
  desc = &pep->p_tx_desc_area[tx_index];
  cmd_sts = desc->cmd_sts;
  if (!force && (cmd_sts & BUF_OWNED_BY_DMA)) {
   if (released > 0) {
    goto txq_reclaim_end;
   } else {
    released = -1;
    goto txq_reclaim_end;
   }
  }
  pep->tx_used_desc_q = (tx_index + 1) % pep->tx_ring_size;
  pep->tx_desc_count--;
  addr = desc->buf_ptr;
  count = desc->byte_cnt;
  skb = pep->tx_skb[tx_index];
  if (skb)
   pep->tx_skb[tx_index] = ((void*)0);

  if (cmd_sts & TX_ERROR) {
   if (net_ratelimit())
    netdev_err(dev, "Error in TX\n");
   dev->stats.tx_errors++;
  }
  dma_unmap_single(&pep->pdev->dev, addr, count, DMA_TO_DEVICE);
  if (skb)
   dev_kfree_skb_irq(skb);
  released++;
 }
txq_reclaim_end:
 netif_tx_unlock(dev);
 return released;
}
