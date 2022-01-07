
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath6kl_usb_pipe {TYPE_1__* ar_usb; int urb_list_head; int urb_cnt; } ;
struct ath6kl_urb_context {int link; } ;
struct TYPE_2__ {int cs_lock; } ;


 int list_add (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ath6kl_usb_free_urb_to_pipe(struct ath6kl_usb_pipe *pipe,
     struct ath6kl_urb_context *urb_context)
{
 unsigned long flags;


 if (!pipe->ar_usb)
  return;

 spin_lock_irqsave(&pipe->ar_usb->cs_lock, flags);
 pipe->urb_cnt++;

 list_add(&urb_context->link, &pipe->urb_list_head);
 spin_unlock_irqrestore(&pipe->ar_usb->cs_lock, flags);
}
