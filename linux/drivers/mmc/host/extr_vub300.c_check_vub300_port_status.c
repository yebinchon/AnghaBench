
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vub300_mmc_host {int system_port_status; int udev; } ;


 int GET_SYSTEM_PORT_STATUS ;
 int HZ ;
 int USB_DIR_IN ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int new_system_port_status (struct vub300_mmc_host*) ;
 int usb_control_msg (int ,int ,int ,int,int,int,int *,int,int ) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static void check_vub300_port_status(struct vub300_mmc_host *vub300)
{




 int retval;
 retval =
  usb_control_msg(vub300->udev, usb_rcvctrlpipe(vub300->udev, 0),
    GET_SYSTEM_PORT_STATUS,
    USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
    0x0000, 0x0000, &vub300->system_port_status,
    sizeof(vub300->system_port_status), HZ);
 if (sizeof(vub300->system_port_status) == retval)
  new_system_port_status(vub300);
}
