
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usbnet {int dummy; } ;


 int USB_DIR_IN ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int le16_to_cpus (int *) ;
 int usbnet_read_cmd (struct usbnet*,int ,int,int ,int ,int *,int) ;

__attribute__((used)) static int
nc_vendor_read(struct usbnet *dev, u8 req, u8 regnum, u16 *retval_ptr)
{
 int status = usbnet_read_cmd(dev, req,
         USB_DIR_IN | USB_TYPE_VENDOR |
         USB_RECIP_DEVICE,
         0, regnum, retval_ptr,
         sizeof *retval_ptr);
 if (status > 0)
  status = 0;
 if (!status)
  le16_to_cpus(retval_ptr);
 return status;
}
