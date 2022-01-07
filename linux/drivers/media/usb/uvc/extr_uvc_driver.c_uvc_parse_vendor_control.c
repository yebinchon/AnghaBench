
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_8__ {unsigned char bNumControls; unsigned char bControlSize; int * bmControls; int * bmControlsType; int * guidExtensionCode; } ;
struct uvc_entity {int list; int name; TYPE_4__ extension; int * baSourceID; } ;
struct uvc_device {int entities; struct usb_device* udev; TYPE_1__* intf; } ;
struct TYPE_7__ {int bInterfaceNumber; } ;
struct usb_host_interface {TYPE_3__ desc; } ;
struct TYPE_6__ {int idVendor; } ;
struct usb_device {int devnum; TYPE_2__ descriptor; } ;
struct TYPE_5__ {struct usb_host_interface* cur_altsetting; } ;


 int ENOMEM ;
 int UVC_TRACE_DESCR ;
 int UVC_VC_EXTENSION_UNIT ;
 int le16_to_cpu (int ) ;
 int list_add_tail (int *,int *) ;
 int memcpy (int *,unsigned char const*,int) ;
 int sprintf (int ,char*,unsigned char const) ;
 int usb_string (struct usb_device*,unsigned char const,int ,int) ;
 struct uvc_entity* uvc_alloc_entity (int ,unsigned char const,unsigned int,int) ;
 int uvc_trace (int ,char*,int ,int ) ;

__attribute__((used)) static int uvc_parse_vendor_control(struct uvc_device *dev,
 const unsigned char *buffer, int buflen)
{
 struct usb_device *udev = dev->udev;
 struct usb_host_interface *alts = dev->intf->cur_altsetting;
 struct uvc_entity *unit;
 unsigned int n, p;
 int handled = 0;

 switch (le16_to_cpu(dev->udev->descriptor.idVendor)) {
 case 0x046d:
  if (buffer[1] != 0x41 || buffer[2] != 0x01)
   break;
  p = buflen >= 22 ? buffer[21] : 0;
  n = buflen >= 25 + p ? buffer[22+p] : 0;

  if (buflen < 25 + p + 2*n) {
   uvc_trace(UVC_TRACE_DESCR, "device %d videocontrol "
    "interface %d EXTENSION_UNIT error\n",
    udev->devnum, alts->desc.bInterfaceNumber);
   break;
  }

  unit = uvc_alloc_entity(UVC_VC_EXTENSION_UNIT, buffer[3],
     p + 1, 2*n);
  if (unit == ((void*)0))
   return -ENOMEM;

  memcpy(unit->extension.guidExtensionCode, &buffer[4], 16);
  unit->extension.bNumControls = buffer[20];
  memcpy(unit->baSourceID, &buffer[22], p);
  unit->extension.bControlSize = buffer[22+p];
  unit->extension.bmControls = (u8 *)unit + sizeof(*unit);
  unit->extension.bmControlsType = (u8 *)unit + sizeof(*unit)
            + n;
  memcpy(unit->extension.bmControls, &buffer[23+p], 2*n);

  if (buffer[24+p+2*n] != 0)
   usb_string(udev, buffer[24+p+2*n], unit->name,
       sizeof(unit->name));
  else
   sprintf(unit->name, "Extension %u", buffer[3]);

  list_add_tail(&unit->list, &dev->entities);
  handled = 1;
  break;
 }

 return handled;
}
