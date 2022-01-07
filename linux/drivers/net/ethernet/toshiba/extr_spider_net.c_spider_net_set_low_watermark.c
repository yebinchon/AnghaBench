
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spider_net_hw_descr {int dmac_cmd_status; } ;
struct spider_net_descr {struct spider_net_hw_descr* hwdescr; struct spider_net_descr* next; } ;
struct TYPE_2__ {int num_desc; int lock; struct spider_net_descr* tail; struct spider_net_descr* head; } ;
struct spider_net_card {TYPE_1__ tx_chain; struct spider_net_descr* low_watermark; } ;


 int SPIDER_NET_DESCR_NOT_IN_USE ;
 int SPIDER_NET_DESCR_TXDESFLG ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
spider_net_set_low_watermark(struct spider_net_card *card)
{
 struct spider_net_descr *descr = card->tx_chain.tail;
 struct spider_net_hw_descr *hwdescr;
 unsigned long flags;
 int status;
 int cnt=0;
 int i;



 while (descr != card->tx_chain.head) {
  status = descr->hwdescr->dmac_cmd_status & SPIDER_NET_DESCR_NOT_IN_USE;
  if (status == SPIDER_NET_DESCR_NOT_IN_USE)
   break;
  descr = descr->next;
  cnt++;
 }


 if (cnt < card->tx_chain.num_desc/4)
  return cnt;


 descr = card->tx_chain.tail;
 cnt = (cnt*3)/4;
 for (i=0;i<cnt; i++)
  descr = descr->next;


 spin_lock_irqsave(&card->tx_chain.lock, flags);
 descr->hwdescr->dmac_cmd_status |= SPIDER_NET_DESCR_TXDESFLG;
 if (card->low_watermark && card->low_watermark != descr) {
  hwdescr = card->low_watermark->hwdescr;
  hwdescr->dmac_cmd_status =
       hwdescr->dmac_cmd_status & ~SPIDER_NET_DESCR_TXDESFLG;
 }
 card->low_watermark = descr;
 spin_unlock_irqrestore(&card->tx_chain.lock, flags);
 return cnt;
}
