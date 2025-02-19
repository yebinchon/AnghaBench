
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int features; int hw_features; int gso_max_segs; int * ethtool_ops; int * netdev_ops; int watchdog_timeo; } ;
struct fec_enet_private {int rx_align; int tx_align; unsigned int total_tx_ring_size; unsigned int total_rx_ring_size; unsigned int num_rx_queues; unsigned int num_tx_queues; int quirks; int csum_flags; int napi; scalar_t__ hwp; struct fec_enet_priv_tx_q** tx_queue; struct fec_enet_priv_rx_q** rx_queue; TYPE_1__* pdev; scalar_t__ bufdesc_ex; } ;
struct TYPE_6__ {unsigned int ring_size; unsigned int qid; unsigned int dma; unsigned int dsize; unsigned int dsize_log2; struct bufdesc* last; scalar_t__ reg_desc_active; struct bufdesc* cur; struct bufdesc* base; } ;
struct fec_enet_priv_tx_q {TYPE_3__ bd; } ;
struct TYPE_5__ {unsigned int ring_size; unsigned int qid; unsigned int dma; unsigned int dsize; unsigned int dsize_log2; struct bufdesc* last; scalar_t__ reg_desc_active; struct bufdesc* cur; struct bufdesc* base; } ;
struct fec_enet_priv_rx_q {TYPE_2__ bd; } ;
struct bufdesc_ex {int dummy; } ;
struct bufdesc {int dummy; } ;
typedef unsigned int dma_addr_t ;
struct TYPE_4__ {int dev; } ;


 int DMA_BIT_MASK (int) ;
 int ENOMEM ;
 scalar_t__ FEC_IMASK ;
 int FEC_MAX_TSO_SEGS ;
 int FEC_QUIRK_HAS_AVB ;
 int FEC_QUIRK_HAS_CSUM ;
 int FEC_QUIRK_HAS_VLAN ;
 int FEC_QUIRK_MIB_CLEAR ;
 int FEC_RX_DISABLED_IMASK ;
 int FLAG_RX_CSUM_ENABLED ;
 int GFP_KERNEL ;
 int NAPI_POLL_WEIGHT ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int NETIF_F_IPV6_CSUM ;
 int NETIF_F_IP_CSUM ;
 int NETIF_F_RXCSUM ;
 int NETIF_F_SG ;
 int NETIF_F_TSO ;
 int TX_TIMEOUT ;
 int WARN_ON (int) ;
 unsigned int __fls (unsigned int) ;
 int dev_warn (int *,char*) ;
 int dma_set_mask_and_coherent (int *,int ) ;
 struct bufdesc* dmam_alloc_coherent (int *,int,unsigned int*,int ) ;
 int fec_enet_alloc_queue (struct net_device*) ;
 int fec_enet_clear_ethtool_stats (struct net_device*) ;
 int fec_enet_ethtool_ops ;
 int fec_enet_rx_napi ;
 int fec_enet_update_ethtool_stats (struct net_device*) ;
 int fec_get_mac (struct net_device*) ;
 int fec_netdev_ops ;
 int fec_restart (struct net_device*) ;
 int fec_set_mac_address (struct net_device*,int *) ;
 struct fec_enet_private* netdev_priv (struct net_device*) ;
 int netif_napi_add (struct net_device*,int *,int ,int ) ;
 scalar_t__* offset_des_active_rxq ;
 scalar_t__* offset_des_active_txq ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int fec_enet_init(struct net_device *ndev)
{
 struct fec_enet_private *fep = netdev_priv(ndev);
 struct bufdesc *cbd_base;
 dma_addr_t bd_dma;
 int bd_size;
 unsigned int i;
 unsigned dsize = fep->bufdesc_ex ? sizeof(struct bufdesc_ex) :
   sizeof(struct bufdesc);
 unsigned dsize_log2 = __fls(dsize);
 int ret;

 WARN_ON(dsize != (1 << dsize_log2));




 fep->rx_align = 0x3;
 fep->tx_align = 0x3;



 ret = dma_set_mask_and_coherent(&fep->pdev->dev, DMA_BIT_MASK(32));
 if (ret < 0) {
  dev_warn(&fep->pdev->dev, "No suitable DMA available\n");
  return ret;
 }

 fec_enet_alloc_queue(ndev);

 bd_size = (fep->total_tx_ring_size + fep->total_rx_ring_size) * dsize;


 cbd_base = dmam_alloc_coherent(&fep->pdev->dev, bd_size, &bd_dma,
           GFP_KERNEL);
 if (!cbd_base) {
  return -ENOMEM;
 }


 fec_get_mac(ndev);

 fec_set_mac_address(ndev, ((void*)0));


 for (i = 0; i < fep->num_rx_queues; i++) {
  struct fec_enet_priv_rx_q *rxq = fep->rx_queue[i];
  unsigned size = dsize * rxq->bd.ring_size;

  rxq->bd.qid = i;
  rxq->bd.base = cbd_base;
  rxq->bd.cur = cbd_base;
  rxq->bd.dma = bd_dma;
  rxq->bd.dsize = dsize;
  rxq->bd.dsize_log2 = dsize_log2;
  rxq->bd.reg_desc_active = fep->hwp + offset_des_active_rxq[i];
  bd_dma += size;
  cbd_base = (struct bufdesc *)(((void *)cbd_base) + size);
  rxq->bd.last = (struct bufdesc *)(((void *)cbd_base) - dsize);
 }

 for (i = 0; i < fep->num_tx_queues; i++) {
  struct fec_enet_priv_tx_q *txq = fep->tx_queue[i];
  unsigned size = dsize * txq->bd.ring_size;

  txq->bd.qid = i;
  txq->bd.base = cbd_base;
  txq->bd.cur = cbd_base;
  txq->bd.dma = bd_dma;
  txq->bd.dsize = dsize;
  txq->bd.dsize_log2 = dsize_log2;
  txq->bd.reg_desc_active = fep->hwp + offset_des_active_txq[i];
  bd_dma += size;
  cbd_base = (struct bufdesc *)(((void *)cbd_base) + size);
  txq->bd.last = (struct bufdesc *)(((void *)cbd_base) - dsize);
 }



 ndev->watchdog_timeo = TX_TIMEOUT;
 ndev->netdev_ops = &fec_netdev_ops;
 ndev->ethtool_ops = &fec_enet_ethtool_ops;

 writel(FEC_RX_DISABLED_IMASK, fep->hwp + FEC_IMASK);
 netif_napi_add(ndev, &fep->napi, fec_enet_rx_napi, NAPI_POLL_WEIGHT);

 if (fep->quirks & FEC_QUIRK_HAS_VLAN)

  ndev->features |= NETIF_F_HW_VLAN_CTAG_RX;

 if (fep->quirks & FEC_QUIRK_HAS_CSUM) {
  ndev->gso_max_segs = FEC_MAX_TSO_SEGS;


  ndev->features |= (NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM
    | NETIF_F_RXCSUM | NETIF_F_SG | NETIF_F_TSO);
  fep->csum_flags |= FLAG_RX_CSUM_ENABLED;
 }

 if (fep->quirks & FEC_QUIRK_HAS_AVB) {
  fep->tx_align = 0;
  fep->rx_align = 0x3f;
 }

 ndev->hw_features = ndev->features;

 fec_restart(ndev);

 if (fep->quirks & FEC_QUIRK_MIB_CLEAR)
  fec_enet_clear_ethtool_stats(ndev);
 else
  fec_enet_update_ethtool_stats(ndev);

 return 0;
}
