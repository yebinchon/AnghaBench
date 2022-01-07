
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcmf_usbreq {int dummy; } ;
struct TYPE_2__ {scalar_t__ state; } ;
struct brcmf_usbdev_info {int rx_freeq; TYPE_1__ bus_pub; } ;


 scalar_t__ BRCMFMAC_USB_STATE_UP ;
 int brcmf_err (char*,scalar_t__) ;
 struct brcmf_usbreq* brcmf_usb_deq (struct brcmf_usbdev_info*,int *,int *) ;
 int brcmf_usb_rx_refill (struct brcmf_usbdev_info*,struct brcmf_usbreq*) ;

__attribute__((used)) static void brcmf_usb_rx_fill_all(struct brcmf_usbdev_info *devinfo)
{
 struct brcmf_usbreq *req;

 if (devinfo->bus_pub.state != BRCMFMAC_USB_STATE_UP) {
  brcmf_err("bus is not up=%d\n", devinfo->bus_pub.state);
  return;
 }
 while ((req = brcmf_usb_deq(devinfo, &devinfo->rx_freeq, ((void*)0))) != ((void*)0))
  brcmf_usb_rx_refill(devinfo, req);
}
