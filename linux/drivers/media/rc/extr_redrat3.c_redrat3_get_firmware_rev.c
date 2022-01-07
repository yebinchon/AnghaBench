
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct redrat3_dev {int dev; int udev; } ;


 int GFP_KERNEL ;
 int HZ ;
 int RR3_FW_VERSION ;
 scalar_t__ RR3_FW_VERSION_LEN ;
 int USB_DIR_IN ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*,char*) ;
 char* kcalloc (scalar_t__,int,int ) ;
 int kfree (char*) ;
 int usb_control_msg (int ,int ,int ,int,int ,int ,char*,scalar_t__,int) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static void redrat3_get_firmware_rev(struct redrat3_dev *rr3)
{
 int rc;
 char *buffer;

 buffer = kcalloc(RR3_FW_VERSION_LEN + 1, sizeof(*buffer), GFP_KERNEL);
 if (!buffer)
  return;

 rc = usb_control_msg(rr3->udev, usb_rcvctrlpipe(rr3->udev, 0),
        RR3_FW_VERSION,
        USB_TYPE_VENDOR | USB_RECIP_DEVICE | USB_DIR_IN,
        0, 0, buffer, RR3_FW_VERSION_LEN, HZ * 5);

 if (rc >= 0)
  dev_info(rr3->dev, "Firmware rev: %s", buffer);
 else
  dev_err(rr3->dev, "Problem fetching firmware ID\n");

 kfree(buffer);
}
