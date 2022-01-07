
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bnxt {int flags; int rx_skb_func; int rx_dir; int max_mtu; TYPE_1__* dev; } ;
struct TYPE_2__ {scalar_t__ mtu; int max_mtu; } ;


 int BNXT_FLAG_AGG_RINGS ;
 int BNXT_FLAG_NO_AGG_RINGS ;
 int BNXT_FLAG_RX_PAGE_MODE ;
 scalar_t__ BNXT_MAX_PAGE_MODE_MTU ;
 int DMA_BIDIRECTIONAL ;
 int DMA_FROM_DEVICE ;
 int EOPNOTSUPP ;
 int bnxt_rx_page_skb ;
 int bnxt_rx_skb ;
 int min_t (int ,int ,scalar_t__) ;
 int netdev_update_features (TYPE_1__*) ;
 int u16 ;

int bnxt_set_rx_skb_mode(struct bnxt *bp, bool page_mode)
{
 if (page_mode) {
  if (bp->dev->mtu > BNXT_MAX_PAGE_MODE_MTU)
   return -EOPNOTSUPP;
  bp->dev->max_mtu =
   min_t(u16, bp->max_mtu, BNXT_MAX_PAGE_MODE_MTU);
  bp->flags &= ~BNXT_FLAG_AGG_RINGS;
  bp->flags |= BNXT_FLAG_NO_AGG_RINGS | BNXT_FLAG_RX_PAGE_MODE;
  bp->rx_dir = DMA_BIDIRECTIONAL;
  bp->rx_skb_func = bnxt_rx_page_skb;

  netdev_update_features(bp->dev);
 } else {
  bp->dev->max_mtu = bp->max_mtu;
  bp->flags &= ~BNXT_FLAG_RX_PAGE_MODE;
  bp->rx_dir = DMA_FROM_DEVICE;
  bp->rx_skb_func = bnxt_rx_skb;
 }
 return 0;
}
