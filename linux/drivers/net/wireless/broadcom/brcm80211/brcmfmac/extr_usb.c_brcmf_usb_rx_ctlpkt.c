
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ state; } ;
struct brcmf_usbdev_info {int ctl_completed; int ctl_urb_status; int ctl_urb_actual_length; int ctl_op; TYPE_1__ bus_pub; } ;


 scalar_t__ BRCMFMAC_USB_STATE_UP ;
 int EIO ;
 int USB ;
 int brcmf_dbg (int ,char*) ;
 int brcmf_err (char*,...) ;
 struct brcmf_usbdev_info* brcmf_usb_get_businfo (struct device*) ;
 int brcmf_usb_ioctl_resp_wait (struct brcmf_usbdev_info*) ;
 int brcmf_usb_recv_ctl (struct brcmf_usbdev_info*,int *,int ) ;
 int clear_bit (int ,int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static int brcmf_usb_rx_ctlpkt(struct device *dev, u8 *buf, u32 len)
{
 int err = 0;
 int timeout = 0;
 struct brcmf_usbdev_info *devinfo = brcmf_usb_get_businfo(dev);

 brcmf_dbg(USB, "Enter\n");
 if (devinfo->bus_pub.state != BRCMFMAC_USB_STATE_UP)
  return -EIO;

 if (test_and_set_bit(0, &devinfo->ctl_op))
  return -EIO;

 devinfo->ctl_completed = 0;
 err = brcmf_usb_recv_ctl(devinfo, buf, len);
 if (err) {
  brcmf_err("fail %d bytes: %d\n", err, len);
  clear_bit(0, &devinfo->ctl_op);
  return err;
 }
 timeout = brcmf_usb_ioctl_resp_wait(devinfo);
 err = devinfo->ctl_urb_status;
 clear_bit(0, &devinfo->ctl_op);
 if (!timeout) {
  brcmf_err("rxctl wait timed out\n");
  err = -EIO;
 }
 if (!err)
  return devinfo->ctl_urb_actual_length;
 else
  return err;
}
