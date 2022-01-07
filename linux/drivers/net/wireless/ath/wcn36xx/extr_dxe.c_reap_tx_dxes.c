
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wcn36xx_dxe_ctl {struct wcn36xx_dxe_ctl* next; TYPE_2__* skb; TYPE_1__* desc; } ;
struct wcn36xx_dxe_ch {int lock; struct wcn36xx_dxe_ctl* tail_blk_ctl; struct wcn36xx_dxe_ctl* head_blk_ctl; } ;
struct wcn36xx {int queues_stopped; int hw; int dev; } ;
struct ieee80211_tx_info {int flags; } ;
struct TYPE_5__ {int len; } ;
struct TYPE_4__ {int src_addr_l; int ctrl; } ;


 int DMA_TO_DEVICE ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (TYPE_2__*) ;
 int IEEE80211_TX_CTL_REQ_TX_STATUS ;
 int READ_ONCE (int ) ;
 int WCN36xx_DXE_CTRL_EOP ;
 int WCN36xx_DXE_CTRL_VLD ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int ieee80211_free_txskb (int ,TYPE_2__*) ;
 int ieee80211_wake_queues (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void reap_tx_dxes(struct wcn36xx *wcn, struct wcn36xx_dxe_ch *ch)
{
 struct wcn36xx_dxe_ctl *ctl;
 struct ieee80211_tx_info *info;
 unsigned long flags;






 spin_lock_irqsave(&ch->lock, flags);
 ctl = ch->tail_blk_ctl;
 do {
  if (READ_ONCE(ctl->desc->ctrl) & WCN36xx_DXE_CTRL_VLD)
   break;

  if (ctl->skb &&
      READ_ONCE(ctl->desc->ctrl) & WCN36xx_DXE_CTRL_EOP) {
   dma_unmap_single(wcn->dev, ctl->desc->src_addr_l,
      ctl->skb->len, DMA_TO_DEVICE);
   info = IEEE80211_SKB_CB(ctl->skb);
   if (!(info->flags & IEEE80211_TX_CTL_REQ_TX_STATUS)) {

    ieee80211_free_txskb(wcn->hw, ctl->skb);
   }

   if (wcn->queues_stopped) {
    wcn->queues_stopped = 0;
    ieee80211_wake_queues(wcn->hw);
   }

   ctl->skb = ((void*)0);
  }
  ctl = ctl->next;
 } while (ctl != ch->head_blk_ctl);

 ch->tail_blk_ctl = ctl;
 spin_unlock_irqrestore(&ch->lock, flags);
}
