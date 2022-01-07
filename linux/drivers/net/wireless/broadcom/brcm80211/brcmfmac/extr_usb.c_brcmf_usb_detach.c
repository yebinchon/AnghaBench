
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmf_usbdev_info {scalar_t__ settings; int rx_reqs; int tx_reqs; int bulk_urb; int ctl_urb; int tx_freeq; int rx_freeq; } ;


 int USB ;
 int brcmf_dbg (int ,char*,struct brcmf_usbdev_info*) ;
 int brcmf_release_module_param (scalar_t__) ;
 int brcmf_usb_free_q (int *) ;
 int kfree (int ) ;
 int usb_free_urb (int ) ;

__attribute__((used)) static void brcmf_usb_detach(struct brcmf_usbdev_info *devinfo)
{
 brcmf_dbg(USB, "Enter, devinfo %p\n", devinfo);


 brcmf_usb_free_q(&devinfo->rx_freeq);
 brcmf_usb_free_q(&devinfo->tx_freeq);

 usb_free_urb(devinfo->ctl_urb);
 usb_free_urb(devinfo->bulk_urb);

 kfree(devinfo->tx_reqs);
 kfree(devinfo->rx_reqs);

 if (devinfo->settings)
  brcmf_release_module_param(devinfo->settings);
}
