
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int status; struct ath10k_urb_context* context; } ;
struct sk_buff {int dummy; } ;
struct ath10k_usb_pipe {int io_complete_work; int io_comp_queue; int logical_pipe_num; TYPE_1__* ar_usb; } ;
struct ath10k_urb_context {struct ath10k_usb_pipe* pipe; struct sk_buff* skb; } ;
struct ath10k {int dummy; } ;
struct TYPE_2__ {struct ath10k* ar; } ;


 int ATH10K_DBG_USB_BULK ;
 int ath10k_dbg (struct ath10k*,int ,char*,int ,int ) ;
 int ath10k_usb_free_urb_to_pipe (struct ath10k_usb_pipe*,struct ath10k_urb_context*) ;
 int schedule_work (int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;

__attribute__((used)) static void ath10k_usb_transmit_complete(struct urb *urb)
{
 struct ath10k_urb_context *urb_context = urb->context;
 struct ath10k_usb_pipe *pipe = urb_context->pipe;
 struct ath10k *ar = pipe->ar_usb->ar;
 struct sk_buff *skb;

 if (urb->status != 0) {
  ath10k_dbg(ar, ATH10K_DBG_USB_BULK,
      "pipe: %d, failed:%d\n",
      pipe->logical_pipe_num, urb->status);
 }

 skb = urb_context->skb;
 urb_context->skb = ((void*)0);
 ath10k_usb_free_urb_to_pipe(urb_context->pipe, urb_context);


 skb_queue_tail(&pipe->io_comp_queue, skb);
 schedule_work(&pipe->io_complete_work);
}
