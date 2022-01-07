
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {scalar_t__* data; int net; } ;
struct usb_interface {int dummy; } ;
struct smsc75xx_priv {int set_multicast; } ;


 int cancel_work_sync (int *) ;
 int ifdown ;
 int kfree (struct smsc75xx_priv*) ;
 int netif_dbg (struct usbnet*,int ,int ,char*) ;

__attribute__((used)) static void smsc75xx_unbind(struct usbnet *dev, struct usb_interface *intf)
{
 struct smsc75xx_priv *pdata = (struct smsc75xx_priv *)(dev->data[0]);
 if (pdata) {
  cancel_work_sync(&pdata->set_multicast);
  netif_dbg(dev, ifdown, dev->net, "free pdata\n");
  kfree(pdata);
  pdata = ((void*)0);
  dev->data[0] = 0;
 }
}
