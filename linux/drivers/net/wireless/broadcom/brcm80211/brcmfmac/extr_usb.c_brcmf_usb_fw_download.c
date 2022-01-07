
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct brcmf_usbdev_info {int image_len; scalar_t__ image; } ;


 int ENODEV ;
 int ENOENT ;
 int USB ;
 int brcmf_dbg (int ,char*) ;
 int brcmf_err (char*) ;
 int brcmf_usb_dlrun (struct brcmf_usbdev_info*) ;
 int brcmf_usb_dlstart (struct brcmf_usbdev_info*,int *,int ) ;

__attribute__((used)) static int
brcmf_usb_fw_download(struct brcmf_usbdev_info *devinfo)
{
 int err;

 brcmf_dbg(USB, "Enter\n");
 if (devinfo == ((void*)0))
  return -ENODEV;

 if (!devinfo->image) {
  brcmf_err("No firmware!\n");
  return -ENOENT;
 }

 err = brcmf_usb_dlstart(devinfo,
  (u8 *)devinfo->image, devinfo->image_len);
 if (err == 0)
  err = brcmf_usb_dlrun(devinfo);
 return err;
}
