
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct urb {int dummy; } ;
struct ath10k_usb_pipe {int urb_submitted; int ep_address; int usb_pipe_handle; int logical_pipe_num; TYPE_1__* ar_usb; } ;
struct ath10k_urb_context {TYPE_2__* skb; } ;
struct ath10k {int dummy; } ;
struct TYPE_4__ {int data; } ;
struct TYPE_3__ {int udev; } ;


 int ATH10K_DBG_USB_BULK ;
 int ATH10K_USB_RX_BUFFER_SIZE ;
 int GFP_ATOMIC ;
 int ath10k_dbg (struct ath10k*,int ,char*,int,...) ;
 struct ath10k_urb_context* ath10k_usb_alloc_urb_from_pipe (struct ath10k_usb_pipe*) ;
 int ath10k_usb_cleanup_recv_urb (struct ath10k_urb_context*) ;
 int ath10k_usb_recv_complete ;
 TYPE_2__* dev_alloc_skb (int ) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_anchor_urb (struct urb*,int *) ;
 int usb_fill_bulk_urb (struct urb*,int ,int ,int ,int ,int ,struct ath10k_urb_context*) ;
 int usb_free_urb (struct urb*) ;
 int usb_submit_urb (struct urb*,int ) ;
 int usb_unanchor_urb (struct urb*) ;

__attribute__((used)) static void ath10k_usb_post_recv_transfers(struct ath10k *ar,
        struct ath10k_usb_pipe *recv_pipe)
{
 struct ath10k_urb_context *urb_context;
 struct urb *urb;
 int usb_status;

 for (;;) {
  urb_context = ath10k_usb_alloc_urb_from_pipe(recv_pipe);
  if (!urb_context)
   break;

  urb_context->skb = dev_alloc_skb(ATH10K_USB_RX_BUFFER_SIZE);
  if (!urb_context->skb)
   goto err;

  urb = usb_alloc_urb(0, GFP_ATOMIC);
  if (!urb)
   goto err;

  usb_fill_bulk_urb(urb,
      recv_pipe->ar_usb->udev,
      recv_pipe->usb_pipe_handle,
      urb_context->skb->data,
      ATH10K_USB_RX_BUFFER_SIZE,
      ath10k_usb_recv_complete, urb_context);

  ath10k_dbg(ar, ATH10K_DBG_USB_BULK,
      "usb bulk recv submit %d 0x%x ep 0x%2.2x len %d buf 0x%pK\n",
      recv_pipe->logical_pipe_num,
      recv_pipe->usb_pipe_handle, recv_pipe->ep_address,
      ATH10K_USB_RX_BUFFER_SIZE, urb_context->skb);

  usb_anchor_urb(urb, &recv_pipe->urb_submitted);
  usb_status = usb_submit_urb(urb, GFP_ATOMIC);

  if (usb_status) {
   ath10k_dbg(ar, ATH10K_DBG_USB_BULK,
       "usb bulk recv failed: %d\n",
       usb_status);
   usb_unanchor_urb(urb);
   usb_free_urb(urb);
   goto err;
  }
  usb_free_urb(urb);
 }

 return;

err:
 ath10k_usb_cleanup_recv_urb(urb_context);
}
