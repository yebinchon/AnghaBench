
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct flexcop_usb {int data_mutex; int * data; int udev; } ;
struct flexcop_device {struct flexcop_usb* bus_specific; } ;


 int B2C2_FLEX_PCIOFFSET_TO_INTERNALADDR (int ) ;
 int B2C2_USB_CTRL_PIPE_IN ;
 int B2C2_USB_CTRL_PIPE_OUT ;
 int B2C2_USB_READ_REG ;
 int B2C2_USB_WRITE_REG ;
 int B2C2_WAIT_FOR_OPERATION_RDW ;
 int EIO ;
 int HZ ;
 int USB_DIR_IN ;
 int USB_DIR_OUT ;
 int USB_TYPE_VENDOR ;
 int err (char*,char*,int,int ) ;
 int memcpy (int *,int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_control_msg (int ,int ,int,int,int,int ,int *,int,int) ;

__attribute__((used)) static int flexcop_usb_readwrite_dw(struct flexcop_device *fc, u16 wRegOffsPCI, u32 *val, u8 read)
{
 struct flexcop_usb *fc_usb = fc->bus_specific;
 u8 request = read ? B2C2_USB_READ_REG : B2C2_USB_WRITE_REG;
 u8 request_type = (read ? USB_DIR_IN : USB_DIR_OUT) | USB_TYPE_VENDOR;
 u8 wAddress = B2C2_FLEX_PCIOFFSET_TO_INTERNALADDR(wRegOffsPCI) |
  (read ? 0x80 : 0);
 int ret;

 mutex_lock(&fc_usb->data_mutex);
 if (!read)
  memcpy(fc_usb->data, val, sizeof(*val));

 ret = usb_control_msg(fc_usb->udev,
   read ? B2C2_USB_CTRL_PIPE_IN : B2C2_USB_CTRL_PIPE_OUT,
   request,
   request_type,
   wAddress,
   0,
   fc_usb->data,
   sizeof(u32),
   B2C2_WAIT_FOR_OPERATION_RDW * HZ);

 if (ret != sizeof(u32)) {
  err("error while %s dword from %d (%d).", read ? "reading" :
    "writing", wAddress, wRegOffsPCI);
  if (ret >= 0)
   ret = -EIO;
 }

 if (read && ret >= 0)
  memcpy(val, fc_usb->data, sizeof(*val));
 mutex_unlock(&fc_usb->data_mutex);

 return ret;
}
