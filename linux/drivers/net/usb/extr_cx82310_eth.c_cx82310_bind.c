
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct usbnet {int rx_urb_size; unsigned long partial_data; TYPE_2__* net; scalar_t__ hard_mtu; struct usb_device* udev; } ;
struct usb_interface {int dummy; } ;
struct TYPE_3__ {int iProduct; } ;
struct usb_device {int dev; TYPE_1__ descriptor; } ;
typedef int link ;
typedef int buf ;
struct TYPE_4__ {int* dev_addr; scalar_t__ hard_header_len; } ;


 int CMD_ETHERNET_MODE ;
 int CMD_GET_LINK_STATUS ;
 int CMD_GET_MAC_ADDR ;
 int CMD_START ;
 scalar_t__ CX82310_MTU ;
 int ENODEV ;
 int ENOMEM ;
 int ETH_ALEN ;
 int ETIMEDOUT ;
 int GFP_KERNEL ;
 int cx82310_cmd (struct usbnet*,int ,int,char*,int,int*,int) ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*) ;
 int kfree (void*) ;
 scalar_t__ kmalloc (scalar_t__,int ) ;
 int msleep (int) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ usb_string (struct usb_device*,int ,char*,int) ;
 int usbnet_get_endpoints (struct usbnet*,struct usb_interface*) ;

__attribute__((used)) static int cx82310_bind(struct usbnet *dev, struct usb_interface *intf)
{
 int ret;
 char buf[15];
 struct usb_device *udev = dev->udev;
 u8 link[3];
 int timeout = 50;


 if (usb_string(udev, udev->descriptor.iProduct, buf, sizeof(buf)) > 0
     && strcmp(buf, "USB NET CARD")) {
  dev_info(&udev->dev, "ignoring: probably an ADSL modem\n");
  return -ENODEV;
 }

 ret = usbnet_get_endpoints(dev, intf);
 if (ret)
  return ret;





 dev->net->hard_header_len = 0;

 dev->hard_mtu = CX82310_MTU + 2;

 dev->rx_urb_size = 4096;

 dev->partial_data = (unsigned long) kmalloc(dev->hard_mtu, GFP_KERNEL);
 if (!dev->partial_data)
  return -ENOMEM;


 while (--timeout) {
  ret = cx82310_cmd(dev, CMD_GET_LINK_STATUS, 1, ((void*)0), 0,
      link, sizeof(link));

  if (!ret && link[0] == 1 && link[2] == 1)
   break;
  msleep(500);
 }
 if (!timeout) {
  dev_err(&udev->dev, "firmware not ready in time\n");
  ret = -ETIMEDOUT;
  goto err;
 }


 ret = cx82310_cmd(dev, CMD_ETHERNET_MODE, 1, "\x01", 1, ((void*)0), 0);
 if (ret) {
  dev_err(&udev->dev, "unable to enable ethernet mode: %d\n",
   ret);
  goto err;
 }


 ret = cx82310_cmd(dev, CMD_GET_MAC_ADDR, 1, ((void*)0), 0,
     dev->net->dev_addr, ETH_ALEN);
 if (ret) {
  dev_err(&udev->dev, "unable to read MAC address: %d\n", ret);
  goto err;
 }


 ret = cx82310_cmd(dev, CMD_START, 0, ((void*)0), 0, ((void*)0), 0);
 if (ret)
  goto err;

 return 0;
err:
 kfree((void *)dev->partial_data);
 return ret;
}
