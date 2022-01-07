
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct usb_interface {int dev; } ;
struct usb_device {int dummy; } ;
typedef int __le32 ;


 int GFP_KERNEL ;
 int MCU_TYPE_PLA ;
 int PLA_TCR0 ;
 int RTL8152_REQT_READ ;
 int RTL8152_REQ_GET_REGS ;
 int RTL_VER_01 ;
 int RTL_VER_02 ;
 int RTL_VER_03 ;
 int RTL_VER_04 ;
 int RTL_VER_05 ;
 int RTL_VER_06 ;
 int RTL_VER_07 ;
 int RTL_VER_08 ;
 int RTL_VER_09 ;
 int RTL_VER_UNKNOWN ;
 int VERSION_MASK ;
 int __le32_to_cpu (int ) ;
 int dev_dbg (int *,char*,int ) ;
 int dev_info (int *,char*,int) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 int usb_control_msg (struct usb_device*,int ,int ,int ,int ,int ,int *,int,int) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static u8 rtl_get_version(struct usb_interface *intf)
{
 struct usb_device *udev = interface_to_usbdev(intf);
 u32 ocp_data = 0;
 __le32 *tmp;
 u8 version;
 int ret;

 tmp = kmalloc(sizeof(*tmp), GFP_KERNEL);
 if (!tmp)
  return 0;

 ret = usb_control_msg(udev, usb_rcvctrlpipe(udev, 0),
         RTL8152_REQ_GET_REGS, RTL8152_REQT_READ,
         PLA_TCR0, MCU_TYPE_PLA, tmp, sizeof(*tmp), 500);
 if (ret > 0)
  ocp_data = (__le32_to_cpu(*tmp) >> 16) & VERSION_MASK;

 kfree(tmp);

 switch (ocp_data) {
 case 0x4c00:
  version = RTL_VER_01;
  break;
 case 0x4c10:
  version = RTL_VER_02;
  break;
 case 0x5c00:
  version = RTL_VER_03;
  break;
 case 0x5c10:
  version = RTL_VER_04;
  break;
 case 0x5c20:
  version = RTL_VER_05;
  break;
 case 0x5c30:
  version = RTL_VER_06;
  break;
 case 0x4800:
  version = RTL_VER_07;
  break;
 case 0x6000:
  version = RTL_VER_08;
  break;
 case 0x6010:
  version = RTL_VER_09;
  break;
 default:
  version = RTL_VER_UNKNOWN;
  dev_info(&intf->dev, "Unknown version 0x%04x\n", ocp_data);
  break;
 }

 dev_dbg(&intf->dev, "Detected version 0x%04x\n", version);

 return version;
}
