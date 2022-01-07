
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct pwc_device {int ctrl_buf; int vcinterface; int udev; } ;


 int PWC_ERROR (char*,int,int ,int ) ;
 int USB_CTRL_GET_TIMEOUT ;
 int USB_DIR_IN ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int usb_control_msg (int ,int ,int ,int,int ,int ,int ,int,int ) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static int recv_control_msg(struct pwc_device *pdev,
 u8 request, u16 value, int recv_count)
{
 int rc;

 rc = usb_control_msg(pdev->udev, usb_rcvctrlpipe(pdev->udev, 0),
  request,
  USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
  value, pdev->vcinterface,
  pdev->ctrl_buf, recv_count, USB_CTRL_GET_TIMEOUT);
 if (rc < 0)
  PWC_ERROR("recv_control_msg error %d req %02x val %04x\n",
     rc, request, value);
 return rc;
}
