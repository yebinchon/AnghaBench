
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vl600_state {int dummy; } ;
struct usbnet {TYPE_1__* net; struct vl600_state* driver_priv; } ;
struct usb_interface {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IFF_MULTICAST ;
 int IFF_NOARP ;
 int kfree (struct vl600_state*) ;
 struct vl600_state* kzalloc (int,int ) ;
 int usbnet_cdc_bind (struct usbnet*,struct usb_interface*) ;

__attribute__((used)) static int vl600_bind(struct usbnet *dev, struct usb_interface *intf)
{
 int ret;
 struct vl600_state *s = kzalloc(sizeof(struct vl600_state), GFP_KERNEL);

 if (!s)
  return -ENOMEM;

 ret = usbnet_cdc_bind(dev, intf);
 if (ret) {
  kfree(s);
  return ret;
 }

 dev->driver_priv = s;
 dev->net->flags |= IFF_NOARP;

 dev->net->flags |= IFF_MULTICAST;

 return ret;
}
