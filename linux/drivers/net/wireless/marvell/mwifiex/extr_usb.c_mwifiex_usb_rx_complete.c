
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_card_rec {scalar_t__ rx_cmd_ep; int rx_data_urb_pending; int rx_cmd_urb_pending; } ;
struct urb_context {scalar_t__ ep; struct sk_buff* skb; struct mwifiex_adapter* adapter; } ;
struct urb {int actual_length; int status; scalar_t__ context; } ;
struct sk_buff {int len; } ;
struct mwifiex_adapter {int rx_pending; int work_flags; scalar_t__ card; } ;


 int EINPROGRESS ;
 int ERROR ;
 int FATAL ;
 scalar_t__ HIGH_RX_PENDING ;
 int INFO ;
 int MWIFIEX_IS_SUSPENDED ;
 int MWIFIEX_RX_CMD_BUF_SIZE ;
 int MWIFIEX_RX_DATA_BUF_SIZE ;
 int MWIFIEX_SURPRISE_REMOVED ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_read (int *) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*,...) ;
 int mwifiex_queue_main_work (struct mwifiex_adapter*) ;
 int mwifiex_usb_recv (struct mwifiex_adapter*,struct sk_buff*,scalar_t__) ;
 int mwifiex_usb_submit_rx_urb (struct urb_context*,int) ;
 int pr_err (char*) ;
 int set_bit (int ,int *) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_trim (struct sk_buff*,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void mwifiex_usb_rx_complete(struct urb *urb)
{
 struct urb_context *context = (struct urb_context *)urb->context;
 struct mwifiex_adapter *adapter = context->adapter;
 struct sk_buff *skb = context->skb;
 struct usb_card_rec *card;
 int recv_length = urb->actual_length;
 int size, status;

 if (!adapter || !adapter->card) {
  pr_err("mwifiex adapter or card structure is not valid\n");
  return;
 }

 card = (struct usb_card_rec *)adapter->card;
 if (card->rx_cmd_ep == context->ep)
  atomic_dec(&card->rx_cmd_urb_pending);
 else
  atomic_dec(&card->rx_data_urb_pending);

 if (recv_length) {
  if (urb->status ||
      test_bit(MWIFIEX_SURPRISE_REMOVED, &adapter->work_flags)) {
   mwifiex_dbg(adapter, ERROR,
        "URB status is failed: %d\n", urb->status);

   if (card->rx_cmd_ep != context->ep)
    dev_kfree_skb_any(skb);
   goto setup_for_next;
  }
  if (skb->len > recv_length)
   skb_trim(skb, recv_length);
  else
   skb_put(skb, recv_length - skb->len);

  status = mwifiex_usb_recv(adapter, skb, context->ep);

  mwifiex_dbg(adapter, INFO,
       "info: recv_length=%d, status=%d\n",
       recv_length, status);
  if (status == -EINPROGRESS) {
   mwifiex_queue_main_work(adapter);





   if (card->rx_cmd_ep == context->ep)
    return;
  } else {
   if (status == -1)
    mwifiex_dbg(adapter, ERROR,
         "received data processing failed!\n");


   if (card->rx_cmd_ep != context->ep)
    dev_kfree_skb_any(skb);
  }
 } else if (urb->status) {
  if (!test_bit(MWIFIEX_IS_SUSPENDED, &adapter->work_flags)) {
   mwifiex_dbg(adapter, FATAL,
        "Card is removed: %d\n", urb->status);
   set_bit(MWIFIEX_SURPRISE_REMOVED, &adapter->work_flags);
  }
  dev_kfree_skb_any(skb);
  return;
 } else {

  if (card->rx_cmd_ep != context->ep)
   dev_kfree_skb_any(skb);


 }

setup_for_next:
 if (card->rx_cmd_ep == context->ep)
  size = MWIFIEX_RX_CMD_BUF_SIZE;
 else
  size = MWIFIEX_RX_DATA_BUF_SIZE;

 if (card->rx_cmd_ep == context->ep) {
  mwifiex_usb_submit_rx_urb(context, size);
 } else {
  if (atomic_read(&adapter->rx_pending) <= HIGH_RX_PENDING) {
   mwifiex_usb_submit_rx_urb(context, size);
  } else {
   context->skb = ((void*)0);
  }
 }

 return;
}
