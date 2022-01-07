
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipaq_micro_msg {int node; int tx_len; int id; } ;
struct ipaq_micro {int lock; struct ipaq_micro_msg* msg; int queue; int dev; } ;


 int dev_dbg (int ,char*,int ,int ) ;
 int ipaq_micro_trigger_tx (struct ipaq_micro*) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int ipaq_micro_tx_msg(struct ipaq_micro *micro, struct ipaq_micro_msg *msg)
{
 unsigned long flags;

 dev_dbg(micro->dev, "TX msg: %02x, %d bytes\n", msg->id, msg->tx_len);

 spin_lock_irqsave(&micro->lock, flags);
 if (micro->msg) {
  list_add_tail(&msg->node, &micro->queue);
  spin_unlock_irqrestore(&micro->lock, flags);
  return 0;
 }
 micro->msg = msg;
 ipaq_micro_trigger_tx(micro);
 spin_unlock_irqrestore(&micro->lock, flags);
 return 0;
}
