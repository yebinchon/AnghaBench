
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct if_usb_card {TYPE_1__* udev; struct sk_buff* rx_skb; int rx_urb; int ep_in; } ;
struct TYPE_3__ {int dev; } ;


 int GFP_ATOMIC ;
 int LBTF_DEB_USB ;
 int MRVDRV_ETH_RX_PACKET_BUFFER_SIZE ;
 struct sk_buff* dev_alloc_skb (int ) ;
 int kfree_skb (struct sk_buff*) ;
 int lbtf_deb_enter (int ) ;
 int lbtf_deb_leave (int ) ;
 int lbtf_deb_usb2 (int *,char*,...) ;
 int lbtf_deb_usbd (int *,char*,int) ;
 int pr_err (char*) ;
 int skb_tail_pointer (struct sk_buff*) ;
 int usb_fill_bulk_urb (int ,TYPE_1__*,int ,int ,int ,void (*) (struct urb*),struct if_usb_card*) ;
 int usb_rcvbulkpipe (TYPE_1__*,int ) ;
 int usb_submit_urb (int ,int ) ;

__attribute__((used)) static int __if_usb_submit_rx_urb(struct if_usb_card *cardp,
      void (*callbackfn)(struct urb *urb))
{
 struct sk_buff *skb;
 int ret = -1;

 lbtf_deb_enter(LBTF_DEB_USB);

 skb = dev_alloc_skb(MRVDRV_ETH_RX_PACKET_BUFFER_SIZE);
 if (!skb) {
  pr_err("No free skb\n");
  lbtf_deb_leave(LBTF_DEB_USB);
  return -1;
 }

 cardp->rx_skb = skb;


 usb_fill_bulk_urb(cardp->rx_urb, cardp->udev,
     usb_rcvbulkpipe(cardp->udev, cardp->ep_in),
     skb_tail_pointer(skb),
     MRVDRV_ETH_RX_PACKET_BUFFER_SIZE, callbackfn, cardp);

 lbtf_deb_usb2(&cardp->udev->dev, "Pointer for rx_urb %p\n",
  cardp->rx_urb);
 ret = usb_submit_urb(cardp->rx_urb, GFP_ATOMIC);
 if (ret) {
  lbtf_deb_usbd(&cardp->udev->dev,
   "Submit Rx URB failed: %d\n", ret);
  kfree_skb(skb);
  cardp->rx_skb = ((void*)0);
  lbtf_deb_leave(LBTF_DEB_USB);
  return -1;
 } else {
  lbtf_deb_usb2(&cardp->udev->dev, "Submit Rx URB success\n");
  lbtf_deb_leave(LBTF_DEB_USB);
  return 0;
 }
}
