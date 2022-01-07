
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {scalar_t__ status; scalar_t__ context; } ;
struct brcmf_usbreq {int * skb; struct brcmf_usbdev_info* devinfo; } ;
struct brcmf_usbdev_info {scalar_t__ tx_freecount; scalar_t__ tx_high_watermark; int tx_flowblock; int tx_flowblock_lock; int dev; int tx_freeq; } ;


 int USB ;
 int brcmf_dbg (int ,char*,scalar_t__,int *) ;
 int brcmf_proto_bcdc_txcomplete (int ,int *,int) ;
 int brcmf_proto_bcdc_txflowblock (int ,int) ;
 int brcmf_usb_del_fromq (struct brcmf_usbdev_info*,struct brcmf_usbreq*) ;
 int brcmf_usb_enq (struct brcmf_usbdev_info*,int *,struct brcmf_usbreq*,scalar_t__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void brcmf_usb_tx_complete(struct urb *urb)
{
 struct brcmf_usbreq *req = (struct brcmf_usbreq *)urb->context;
 struct brcmf_usbdev_info *devinfo = req->devinfo;
 unsigned long flags;

 brcmf_dbg(USB, "Enter, urb->status=%d, skb=%p\n", urb->status,
    req->skb);
 brcmf_usb_del_fromq(devinfo, req);

 brcmf_proto_bcdc_txcomplete(devinfo->dev, req->skb, urb->status == 0);
 req->skb = ((void*)0);
 brcmf_usb_enq(devinfo, &devinfo->tx_freeq, req, &devinfo->tx_freecount);
 spin_lock_irqsave(&devinfo->tx_flowblock_lock, flags);
 if (devinfo->tx_freecount > devinfo->tx_high_watermark &&
  devinfo->tx_flowblock) {
  brcmf_proto_bcdc_txflowblock(devinfo->dev, 0);
  devinfo->tx_flowblock = 0;
 }
 spin_unlock_irqrestore(&devinfo->tx_flowblock_lock, flags);
}
