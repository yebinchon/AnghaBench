
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int chiprev; int devid; } ;
struct brcmf_usbdev_info {TYPE_1__ bus_pub; int fw_name; } ;
struct brcmf_fw_request {TYPE_2__* items; } ;
struct brcmf_fw_name {char* member_0; int member_1; } ;
struct TYPE_4__ {int type; } ;


 int ARRAY_SIZE (struct brcmf_fw_name*) ;
 int BRCMF_FW_TYPE_BINARY ;
 size_t BRCMF_USB_FW_CODE ;
 struct brcmf_fw_request* brcmf_fw_alloc_request (int ,int ,struct brcmf_fw_name*,int ,struct brcmf_fw_name*,int ) ;
 struct brcmf_fw_name* brcmf_usb_fwnames ;

__attribute__((used)) static struct brcmf_fw_request *
brcmf_usb_prepare_fw_request(struct brcmf_usbdev_info *devinfo)
{
 struct brcmf_fw_request *fwreq;
 struct brcmf_fw_name fwnames[] = {
  { ".bin", devinfo->fw_name },
 };

 fwreq = brcmf_fw_alloc_request(devinfo->bus_pub.devid,
           devinfo->bus_pub.chiprev,
           brcmf_usb_fwnames,
           ARRAY_SIZE(brcmf_usb_fwnames),
           fwnames, ARRAY_SIZE(fwnames));
 if (!fwreq)
  return ((void*)0);

 fwreq->items[BRCMF_USB_FW_CODE].type = BRCMF_FW_TYPE_BINARY;

 return fwreq;
}
