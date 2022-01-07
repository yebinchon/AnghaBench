
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dev; } ;
struct urb {struct sk_buff* context; } ;
struct sk_buff {int data; } ;
struct atusb {int rx_urbs; struct usb_device* usb_dev; } ;
typedef struct atusb* SKB_ATUSB ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_RX_XFER ;
 struct sk_buff* alloc_skb (int ,int ) ;
 int atusb_in ;
 int dev_warn_ratelimited (int *,char*) ;
 int kfree_skb (struct sk_buff*) ;
 int skb_put (struct sk_buff*,int ) ;
 int usb_anchor_urb (struct urb*,int *) ;
 int usb_fill_bulk_urb (struct urb*,struct usb_device*,int ,int ,int ,int ,struct sk_buff*) ;
 int usb_rcvbulkpipe (struct usb_device*,int) ;
 int usb_submit_urb (struct urb*,int ) ;
 int usb_unanchor_urb (struct urb*) ;

__attribute__((used)) static int atusb_submit_rx_urb(struct atusb *atusb, struct urb *urb)
{
 struct usb_device *usb_dev = atusb->usb_dev;
 struct sk_buff *skb = urb->context;
 int ret;

 if (!skb) {
  skb = alloc_skb(MAX_RX_XFER, GFP_KERNEL);
  if (!skb) {
   dev_warn_ratelimited(&usb_dev->dev,
          "atusb_in: can't allocate skb\n");
   return -ENOMEM;
  }
  skb_put(skb, MAX_RX_XFER);
  SKB_ATUSB(skb) = atusb;
 }

 usb_fill_bulk_urb(urb, usb_dev, usb_rcvbulkpipe(usb_dev, 1),
     skb->data, MAX_RX_XFER, atusb_in, skb);
 usb_anchor_urb(urb, &atusb->rx_urbs);

 ret = usb_submit_urb(urb, GFP_KERNEL);
 if (ret) {
  usb_unanchor_urb(urb);
  kfree_skb(skb);
  urb->context = ((void*)0);
 }
 return ret;
}
