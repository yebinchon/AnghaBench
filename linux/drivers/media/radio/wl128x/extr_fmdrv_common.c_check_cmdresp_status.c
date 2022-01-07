
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct TYPE_2__ {int timer; } ;
struct fmdev {TYPE_1__ irq_info; int resp_skb_lock; struct sk_buff* resp_skb; } ;
struct fm_event_msg_hdr {scalar_t__ status; int op; } ;


 scalar_t__ FM_DRV_TX_TIMEOUT ;
 int del_timer (int *) ;
 int fmerr (char*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline int check_cmdresp_status(struct fmdev *fmdev,
  struct sk_buff **skb)
{
 struct fm_event_msg_hdr *fm_evt_hdr;
 unsigned long flags;

 del_timer(&fmdev->irq_info.timer);

 spin_lock_irqsave(&fmdev->resp_skb_lock, flags);
 *skb = fmdev->resp_skb;
 fmdev->resp_skb = ((void*)0);
 spin_unlock_irqrestore(&fmdev->resp_skb_lock, flags);

 fm_evt_hdr = (void *)(*skb)->data;
 if (fm_evt_hdr->status != 0) {
  fmerr("irq: opcode %x response status is not zero Initiating irq recovery process\n",
    fm_evt_hdr->op);

  mod_timer(&fmdev->irq_info.timer, jiffies + FM_DRV_TX_TIMEOUT);
  return -1;
 }

 return 0;
}
