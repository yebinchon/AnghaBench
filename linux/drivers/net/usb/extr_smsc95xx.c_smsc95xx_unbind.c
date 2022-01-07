
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {scalar_t__* data; int net; } ;
struct usb_interface {int dummy; } ;
struct smsc95xx_priv {int carrier_check; } ;


 int cancel_delayed_work (int *) ;
 int ifdown ;
 int kfree (struct smsc95xx_priv*) ;
 int netif_dbg (struct usbnet*,int ,int ,char*) ;

__attribute__((used)) static void smsc95xx_unbind(struct usbnet *dev, struct usb_interface *intf)
{
 struct smsc95xx_priv *pdata = (struct smsc95xx_priv *)(dev->data[0]);

 if (pdata) {
  cancel_delayed_work(&pdata->carrier_check);
  netif_dbg(dev, ifdown, dev->net, "free pdata\n");
  kfree(pdata);
  pdata = ((void*)0);
  dev->data[0] = 0;
 }
}
