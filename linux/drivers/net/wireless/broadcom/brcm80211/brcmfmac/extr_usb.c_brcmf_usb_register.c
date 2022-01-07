
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int USB ;
 int brcmf_dbg (int ,char*) ;
 int brcmf_err (char*,int) ;
 int brcmf_usbdrvr ;
 int usb_register (int *) ;

void brcmf_usb_register(void)
{
 int ret;

 brcmf_dbg(USB, "Enter\n");
 ret = usb_register(&brcmf_usbdrvr);
 if (ret)
  brcmf_err("usb_register failed %d\n", ret);
}
