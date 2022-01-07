
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct urb {int transfer_flags; } ;
struct sk_buff {int len; int data; } ;
struct ath10k_usb_pipe {int max_packet_size; int urb_submitted; int usb_pipe_handle; } ;
struct ath10k_usb {int udev; struct ath10k_usb_pipe* pipes; } ;
struct ath10k_urb_context {int pipe; struct sk_buff* skb; } ;
struct ath10k_hif_sg_item {struct sk_buff* transfer_context; } ;
struct ath10k {int dummy; } ;


 int ATH10K_DBG_USB_BULK ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int URB_ZERO_PACKET ;
 int ath10k_dbg (struct ath10k*,int ,char*,int) ;
 struct ath10k_urb_context* ath10k_usb_alloc_urb_from_pipe (struct ath10k_usb_pipe*) ;
 int ath10k_usb_free_urb_to_pipe (int ,struct ath10k_urb_context*) ;
 struct ath10k_usb* ath10k_usb_priv (struct ath10k*) ;
 int ath10k_usb_transmit_complete ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_anchor_urb (struct urb*,int *) ;
 int usb_fill_bulk_urb (struct urb*,int ,int ,int ,int,int ,struct ath10k_urb_context*) ;
 int usb_free_urb (struct urb*) ;
 int usb_submit_urb (struct urb*,int ) ;
 int usb_unanchor_urb (struct urb*) ;

__attribute__((used)) static int ath10k_usb_hif_tx_sg(struct ath10k *ar, u8 pipe_id,
    struct ath10k_hif_sg_item *items, int n_items)
{
 struct ath10k_usb *ar_usb = ath10k_usb_priv(ar);
 struct ath10k_usb_pipe *pipe = &ar_usb->pipes[pipe_id];
 struct ath10k_urb_context *urb_context;
 struct sk_buff *skb;
 struct urb *urb;
 int ret, i;

 for (i = 0; i < n_items; i++) {
  urb_context = ath10k_usb_alloc_urb_from_pipe(pipe);
  if (!urb_context) {
   ret = -ENOMEM;
   goto err;
  }

  skb = items[i].transfer_context;
  urb_context->skb = skb;

  urb = usb_alloc_urb(0, GFP_ATOMIC);
  if (!urb) {
   ret = -ENOMEM;
   goto err_free_urb_to_pipe;
  }

  usb_fill_bulk_urb(urb,
      ar_usb->udev,
      pipe->usb_pipe_handle,
      skb->data,
      skb->len,
      ath10k_usb_transmit_complete, urb_context);

  if (!(skb->len % pipe->max_packet_size)) {

   urb->transfer_flags |= URB_ZERO_PACKET;
  }

  usb_anchor_urb(urb, &pipe->urb_submitted);
  ret = usb_submit_urb(urb, GFP_ATOMIC);
  if (ret) {
   ath10k_dbg(ar, ATH10K_DBG_USB_BULK,
       "usb bulk transmit failed: %d\n", ret);
   usb_unanchor_urb(urb);
   ret = -EINVAL;
   goto err_free_urb_to_pipe;
  }

  usb_free_urb(urb);
 }

 return 0;

err_free_urb_to_pipe:
 ath10k_usb_free_urb_to_pipe(urb_context->pipe, urb_context);
err:
 return ret;
}
