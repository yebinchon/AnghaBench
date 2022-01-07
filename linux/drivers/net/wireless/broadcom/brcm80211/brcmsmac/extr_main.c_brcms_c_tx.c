
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct sk_buff {scalar_t__ data; } ;
struct dma_pub {scalar_t__ txavail; } ;
struct d11txh {int TxFrameID; } ;
struct brcms_c_info {TYPE_2__* hw; TYPE_1__* pub; } ;
struct TYPE_4__ {int d11core; struct dma_pub** di; } ;
struct TYPE_3__ {int ieee_hw; } ;


 int ENOSPC ;
 scalar_t__ INVALIDFID ;
 int M_BCMC_FID ;
 int TX_BCMC_FIFO ;
 int WARN_ON (int) ;
 int WARN_ON_ONCE (int) ;
 int brcms_ac_to_fifo (int ) ;
 int brcms_b_write_shm (TYPE_2__*,int ,scalar_t__) ;
 int brcms_c_txfifo (struct brcms_c_info*,int,struct sk_buff*) ;
 int brcms_warn (int ,char*) ;
 int ieee80211_queue_stopped (int ,int ) ;
 scalar_t__ le16_to_cpu (int ) ;
 int skb_get_queue_mapping (struct sk_buff*) ;

__attribute__((used)) static int brcms_c_tx(struct brcms_c_info *wlc, struct sk_buff *skb)
{
 struct dma_pub *dma;
 int fifo, ret = -ENOSPC;
 struct d11txh *txh;
 u16 frameid = INVALIDFID;

 fifo = brcms_ac_to_fifo(skb_get_queue_mapping(skb));
 dma = wlc->hw->di[fifo];
 txh = (struct d11txh *)(skb->data);

 if (dma->txavail == 0) {
  brcms_warn(wlc->hw->d11core,
      "Received frame for tx with no space in DMA ring\n");
  WARN_ON(!ieee80211_queue_stopped(wlc->pub->ieee_hw,
       skb_get_queue_mapping(skb)));
  return -ENOSPC;
 }




 if (fifo == TX_BCMC_FIFO)
  frameid = le16_to_cpu(txh->TxFrameID);


 if (frameid != INVALIDFID) {




  brcms_b_write_shm(wlc->hw, M_BCMC_FID, frameid);
 }

 ret = brcms_c_txfifo(wlc, fifo, skb);





 WARN_ON_ONCE(ret);

 return ret;
}
