
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {scalar_t__ status; int actual_length; scalar_t__ context; } ;
struct sk_buff {int dummy; } ;
struct brcmf_usbreq {struct sk_buff* skb; struct brcmf_usbdev_info* devinfo; } ;
struct TYPE_2__ {scalar_t__ state; } ;
struct brcmf_usbdev_info {int rx_freeq; int dev; TYPE_1__ bus_pub; } ;


 scalar_t__ BRCMFMAC_USB_STATE_UP ;
 int USB ;
 int brcmf_dbg (int ,char*,scalar_t__) ;
 int brcmf_rx_frame (int ,struct sk_buff*,int) ;
 int brcmf_usb_del_fromq (struct brcmf_usbdev_info*,struct brcmf_usbreq*) ;
 int brcmf_usb_enq (struct brcmf_usbdev_info*,int *,struct brcmf_usbreq*,int *) ;
 int brcmf_usb_rx_refill (struct brcmf_usbdev_info*,struct brcmf_usbreq*) ;
 int brcmu_pkt_buf_free_skb (struct sk_buff*) ;
 int skb_put (struct sk_buff*,int ) ;

__attribute__((used)) static void brcmf_usb_rx_complete(struct urb *urb)
{
 struct brcmf_usbreq *req = (struct brcmf_usbreq *)urb->context;
 struct brcmf_usbdev_info *devinfo = req->devinfo;
 struct sk_buff *skb;

 brcmf_dbg(USB, "Enter, urb->status=%d\n", urb->status);
 brcmf_usb_del_fromq(devinfo, req);
 skb = req->skb;
 req->skb = ((void*)0);


 if (urb->status != 0 || !urb->actual_length) {
  brcmu_pkt_buf_free_skb(skb);
  brcmf_usb_enq(devinfo, &devinfo->rx_freeq, req, ((void*)0));
  return;
 }

 if (devinfo->bus_pub.state == BRCMFMAC_USB_STATE_UP) {
  skb_put(skb, urb->actual_length);
  brcmf_rx_frame(devinfo->dev, skb, 1);
  brcmf_usb_rx_refill(devinfo, req);
 } else {
  brcmu_pkt_buf_free_skb(skb);
  brcmf_usb_enq(devinfo, &devinfo->rx_freeq, req, ((void*)0));
 }
 return;

}
