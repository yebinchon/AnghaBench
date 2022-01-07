
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sh_eth_txdesc {int status; int addr; int len; } ;
struct sh_eth_private {scalar_t__ cur_tx; int dirty_tx; int num_tx_ring; int ** tx_skbuff; TYPE_1__* pdev; struct sh_eth_txdesc* tx_ring; } ;
struct TYPE_4__ {int tx_bytes; int tx_packets; } ;
struct net_device {TYPE_2__ stats; } ;
struct TYPE_3__ {int dev; } ;


 int DMA_TO_DEVICE ;
 int TD_TACT ;
 int TD_TDLE ;
 int TD_TFP ;
 int cpu_to_le32 (int ) ;
 int dev_kfree_skb_irq (int *) ;
 int dma_rmb () ;
 int dma_unmap_single (int *,int,int,int ) ;
 int le32_to_cpu (int) ;
 struct sh_eth_private* netdev_priv (struct net_device*) ;
 int netif_info (struct sh_eth_private*,int ,struct net_device*,char*,int,int) ;
 int tx_done ;

__attribute__((used)) static int sh_eth_tx_free(struct net_device *ndev, bool sent_only)
{
 struct sh_eth_private *mdp = netdev_priv(ndev);
 struct sh_eth_txdesc *txdesc;
 int free_num = 0;
 int entry;
 bool sent;

 for (; mdp->cur_tx - mdp->dirty_tx > 0; mdp->dirty_tx++) {
  entry = mdp->dirty_tx % mdp->num_tx_ring;
  txdesc = &mdp->tx_ring[entry];
  sent = !(txdesc->status & cpu_to_le32(TD_TACT));
  if (sent_only && !sent)
   break;

  dma_rmb();
  netif_info(mdp, tx_done, ndev,
      "tx entry %d status 0x%08x\n",
      entry, le32_to_cpu(txdesc->status));

  if (mdp->tx_skbuff[entry]) {
   dma_unmap_single(&mdp->pdev->dev,
      le32_to_cpu(txdesc->addr),
      le32_to_cpu(txdesc->len) >> 16,
      DMA_TO_DEVICE);
   dev_kfree_skb_irq(mdp->tx_skbuff[entry]);
   mdp->tx_skbuff[entry] = ((void*)0);
   free_num++;
  }
  txdesc->status = cpu_to_le32(TD_TFP);
  if (entry >= mdp->num_tx_ring - 1)
   txdesc->status |= cpu_to_le32(TD_TDLE);

  if (sent) {
   ndev->stats.tx_packets++;
   ndev->stats.tx_bytes += le32_to_cpu(txdesc->len) >> 16;
  }
 }
 return free_num;
}
