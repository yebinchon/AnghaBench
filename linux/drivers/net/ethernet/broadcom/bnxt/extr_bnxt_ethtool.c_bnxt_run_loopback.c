
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct sk_buff {int data; } ;
struct bnxt_tx_ring_info {int tx_prod; int tx_db; } ;
struct bnxt_rx_ring_info {TYPE_1__* bnapi; } ;
struct bnxt_cp_ring_info {struct bnxt_cp_ring_info** cp_ring_arr; } ;
struct bnxt {int flags; TYPE_2__* pdev; TYPE_3__* dev; int rx_copy_thresh; struct bnxt_rx_ring_info* rx_ring; struct bnxt_tx_ring_info* tx_ring; } ;
typedef int dma_addr_t ;
struct TYPE_6__ {int dev_addr; scalar_t__ mtu; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {struct bnxt_cp_ring_info cp_ring; } ;


 int BNXT_FLAG_CHIP_P5 ;
 size_t BNXT_RX_HDL ;
 int EIO ;
 int ENOMEM ;
 scalar_t__ ETH_ALEN ;
 scalar_t__ ETH_HLEN ;
 int PCI_DMA_TODEVICE ;
 int bnxt_db_write (struct bnxt*,int *,int ) ;
 int bnxt_poll_loopback (struct bnxt*,struct bnxt_cp_ring_info*,int) ;
 int bnxt_xmit_bd (struct bnxt*,struct bnxt_tx_ring_info*,int ,int) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int dma_map_single (int *,int ,int,int ) ;
 scalar_t__ dma_mapping_error (int *,int ) ;
 int dma_unmap_single (int *,int ,int,int ) ;
 int eth_broadcast_addr (scalar_t__*) ;
 int ether_addr_copy (scalar_t__*,int ) ;
 int min (scalar_t__,int ) ;
 struct sk_buff* netdev_alloc_skb (TYPE_3__*,int) ;
 scalar_t__* skb_put (struct sk_buff*,int) ;
 int wmb () ;

__attribute__((used)) static int bnxt_run_loopback(struct bnxt *bp)
{
 struct bnxt_tx_ring_info *txr = &bp->tx_ring[0];
 struct bnxt_rx_ring_info *rxr = &bp->rx_ring[0];
 struct bnxt_cp_ring_info *cpr;
 int pkt_size, i = 0;
 struct sk_buff *skb;
 dma_addr_t map;
 u8 *data;
 int rc;

 cpr = &rxr->bnapi->cp_ring;
 if (bp->flags & BNXT_FLAG_CHIP_P5)
  cpr = cpr->cp_ring_arr[BNXT_RX_HDL];
 pkt_size = min(bp->dev->mtu + ETH_HLEN, bp->rx_copy_thresh);
 skb = netdev_alloc_skb(bp->dev, pkt_size);
 if (!skb)
  return -ENOMEM;
 data = skb_put(skb, pkt_size);
 eth_broadcast_addr(data);
 i += ETH_ALEN;
 ether_addr_copy(&data[i], bp->dev->dev_addr);
 i += ETH_ALEN;
 for ( ; i < pkt_size; i++)
  data[i] = (u8)(i & 0xff);

 map = dma_map_single(&bp->pdev->dev, skb->data, pkt_size,
        PCI_DMA_TODEVICE);
 if (dma_mapping_error(&bp->pdev->dev, map)) {
  dev_kfree_skb(skb);
  return -EIO;
 }
 bnxt_xmit_bd(bp, txr, map, pkt_size);


 wmb();

 bnxt_db_write(bp, &txr->tx_db, txr->tx_prod);
 rc = bnxt_poll_loopback(bp, cpr, pkt_size);

 dma_unmap_single(&bp->pdev->dev, map, pkt_size, PCI_DMA_TODEVICE);
 dev_kfree_skb(skb);
 return rc;
}
