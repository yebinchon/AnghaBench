
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usbnet {int dummy; } ;


 int USB_DIR_IN ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int usbnet_read_cmd (struct usbnet*,int ,int,int ,int ,int *,int ) ;

__attribute__((used)) static inline int
pl_vendor_req(struct usbnet *dev, u8 req, u8 val, u8 index)
{
 return usbnet_read_cmd(dev, req,
    USB_DIR_IN | USB_TYPE_VENDOR |
    USB_RECIP_DEVICE,
    val, index, ((void*)0), 0);
}
