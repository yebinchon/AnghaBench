
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tx_ctlerrs; int tx_ctlpkts; int rx_ctlerrs; int rx_ctlpkts; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;
struct brcmf_usbdev_info {int ctl_urb_status; int ctl_completed; TYPE_2__ bus_pub; } ;


 int BRCMF_USB_CBCTL_READ ;
 int BRCMF_USB_CBCTL_WRITE ;
 int USB ;
 int brcmf_dbg (int ,char*,int) ;
 int brcmf_usb_ioctl_resp_wake (struct brcmf_usbdev_info*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void
brcmf_usb_ctl_complete(struct brcmf_usbdev_info *devinfo, int type, int status)
{
 brcmf_dbg(USB, "Enter, status=%d\n", status);

 if (unlikely(devinfo == ((void*)0)))
  return;

 if (type == BRCMF_USB_CBCTL_READ) {
  if (status == 0)
   devinfo->bus_pub.stats.rx_ctlpkts++;
  else
   devinfo->bus_pub.stats.rx_ctlerrs++;
 } else if (type == BRCMF_USB_CBCTL_WRITE) {
  if (status == 0)
   devinfo->bus_pub.stats.tx_ctlpkts++;
  else
   devinfo->bus_pub.stats.tx_ctlerrs++;
 }

 devinfo->ctl_urb_status = status;
 devinfo->ctl_completed = 1;
 brcmf_usb_ioctl_resp_wake(devinfo);
}
