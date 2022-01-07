
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int devid; int state; } ;
struct brcmf_usbdev_info {TYPE_1__ bus_pub; } ;


 int BRCMFMAC_USB_STATE_DL_DONE ;
 int BRCMFMAC_USB_STATE_DL_FAIL ;
 int EINVAL ;
 int USB ;
 int brcmf_dbg (int ,char*,...) ;
 int brcmf_usb_dl_writeimage (struct brcmf_usbdev_info*,int *,int) ;

__attribute__((used)) static int brcmf_usb_dlstart(struct brcmf_usbdev_info *devinfo, u8 *fw, int len)
{
 int err;

 brcmf_dbg(USB, "Enter\n");

 if (devinfo == ((void*)0))
  return -EINVAL;

 if (devinfo->bus_pub.devid == 0xDEAD)
  return -EINVAL;

 err = brcmf_usb_dl_writeimage(devinfo, fw, len);
 if (err == 0)
  devinfo->bus_pub.state = BRCMFMAC_USB_STATE_DL_DONE;
 else
  devinfo->bus_pub.state = BRCMFMAC_USB_STATE_DL_FAIL;
 brcmf_dbg(USB, "Exit, err=%d\n", err);

 return err;
}
