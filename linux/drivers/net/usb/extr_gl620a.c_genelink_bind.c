
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usbnet {TYPE_2__* driver_info; int udev; int out; int in; TYPE_1__* net; int hard_mtu; } ;
struct usb_interface {int dummy; } ;
struct TYPE_4__ {int out; int in; } ;
struct TYPE_3__ {int hard_header_len; } ;


 int GL_RCV_BUF_SIZE ;
 int usb_rcvbulkpipe (int ,int ) ;
 int usb_sndbulkpipe (int ,int ) ;

__attribute__((used)) static int genelink_bind(struct usbnet *dev, struct usb_interface *intf)
{
 dev->hard_mtu = GL_RCV_BUF_SIZE;
 dev->net->hard_header_len += 4;
 dev->in = usb_rcvbulkpipe(dev->udev, dev->driver_info->in);
 dev->out = usb_sndbulkpipe(dev->udev, dev->driver_info->out);
 return 0;
}
