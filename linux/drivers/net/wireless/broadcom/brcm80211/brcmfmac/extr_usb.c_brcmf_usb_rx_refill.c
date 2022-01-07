
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int data; } ;
struct brcmf_usbreq {struct sk_buff* skb; int urb; struct brcmf_usbdev_info* devinfo; } ;
struct TYPE_2__ {int bus_mtu; } ;
struct brcmf_usbdev_info {int rx_freeq; int rx_postq; int rx_pipe; int usbdev; TYPE_1__ bus_pub; } ;


 int GFP_ATOMIC ;
 int brcmf_usb_del_fromq (struct brcmf_usbdev_info*,struct brcmf_usbreq*) ;
 int brcmf_usb_enq (struct brcmf_usbdev_info*,int *,struct brcmf_usbreq*,int *) ;
 int brcmf_usb_rx_complete ;
 int brcmu_pkt_buf_free_skb (struct sk_buff*) ;
 struct sk_buff* dev_alloc_skb (int ) ;
 int skb_tailroom (struct sk_buff*) ;
 int usb_fill_bulk_urb (int ,int ,int ,int ,int ,int ,struct brcmf_usbreq*) ;
 int usb_submit_urb (int ,int ) ;

__attribute__((used)) static void brcmf_usb_rx_refill(struct brcmf_usbdev_info *devinfo,
    struct brcmf_usbreq *req)
{
 struct sk_buff *skb;
 int ret;

 if (!req || !devinfo)
  return;

 skb = dev_alloc_skb(devinfo->bus_pub.bus_mtu);
 if (!skb) {
  brcmf_usb_enq(devinfo, &devinfo->rx_freeq, req, ((void*)0));
  return;
 }
 req->skb = skb;

 usb_fill_bulk_urb(req->urb, devinfo->usbdev, devinfo->rx_pipe,
     skb->data, skb_tailroom(skb), brcmf_usb_rx_complete,
     req);
 req->devinfo = devinfo;
 brcmf_usb_enq(devinfo, &devinfo->rx_postq, req, ((void*)0));

 ret = usb_submit_urb(req->urb, GFP_ATOMIC);
 if (ret) {
  brcmf_usb_del_fromq(devinfo, req);
  brcmu_pkt_buf_free_skb(req->skb);
  req->skb = ((void*)0);
  brcmf_usb_enq(devinfo, &devinfo->rx_freeq, req, ((void*)0));
 }
 return;
}
