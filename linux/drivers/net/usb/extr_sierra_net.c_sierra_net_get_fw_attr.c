
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usbnet {int dummy; } ;
typedef int attrdata ;
typedef int __le16 ;


 int EIO ;
 int SWI_USB_REQUEST_GET_FW_ATTR ;
 int USB_DIR_IN ;
 int USB_TYPE_VENDOR ;
 int le16_to_cpu (int ) ;
 int usbnet_read_cmd (struct usbnet*,int ,int,int,int,int *,int) ;

__attribute__((used)) static int sierra_net_get_fw_attr(struct usbnet *dev, u16 *datap)
{
 int result = 0;
 __le16 attrdata;

 result = usbnet_read_cmd(dev,

    SWI_USB_REQUEST_GET_FW_ATTR,
    USB_DIR_IN | USB_TYPE_VENDOR,
    0x0000,
    0x0000,
    &attrdata,
    sizeof(attrdata)
    );

 if (result < 0)
  return -EIO;

 *datap = le16_to_cpu(attrdata);
 return result;
}
