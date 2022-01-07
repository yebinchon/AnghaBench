
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct dma_pub {scalar_t__ txavail; } ;
struct brcms_c_info {TYPE_1__* pub; int wiphy; TYPE_2__* hw; } ;
struct TYPE_4__ {struct dma_pub** di; } ;
struct TYPE_3__ {int ieee_hw; } ;


 size_t TX_BCMC_FIFO ;
 scalar_t__ TX_HEADROOM ;
 int dma_txfast (struct brcms_c_info*,struct dma_pub*,struct sk_buff*) ;
 int ieee80211_queue_stopped (int ,int ) ;
 int ieee80211_stop_queue (int ,int ) ;
 int skb_get_queue_mapping (struct sk_buff*) ;
 int wiphy_err (int ,char*) ;

int
brcms_c_txfifo(struct brcms_c_info *wlc, uint fifo, struct sk_buff *p)
{
 struct dma_pub *dma = wlc->hw->di[fifo];
 int ret;
 u16 queue;

 ret = dma_txfast(wlc, dma, p);
 if (ret < 0)
  wiphy_err(wlc->wiphy, "txfifo: fatal, toss frames !!!\n");






 queue = skb_get_queue_mapping(p);
 if (dma->txavail <= TX_HEADROOM && fifo < TX_BCMC_FIFO &&
     !ieee80211_queue_stopped(wlc->pub->ieee_hw, queue))
  ieee80211_stop_queue(wlc->pub->ieee_hw, queue);

 return ret;
}
