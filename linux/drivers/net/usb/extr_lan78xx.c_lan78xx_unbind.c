
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct lan78xx_priv {int set_vlan; int set_multicast; } ;
struct lan78xx_net {scalar_t__* data; int net; } ;


 int cancel_work_sync (int *) ;
 int ifdown ;
 int kfree (struct lan78xx_priv*) ;
 int lan78xx_remove_irq_domain (struct lan78xx_net*) ;
 int lan78xx_remove_mdio (struct lan78xx_net*) ;
 int netif_dbg (struct lan78xx_net*,int ,int ,char*) ;

__attribute__((used)) static void lan78xx_unbind(struct lan78xx_net *dev, struct usb_interface *intf)
{
 struct lan78xx_priv *pdata = (struct lan78xx_priv *)(dev->data[0]);

 lan78xx_remove_irq_domain(dev);

 lan78xx_remove_mdio(dev);

 if (pdata) {
  cancel_work_sync(&pdata->set_multicast);
  cancel_work_sync(&pdata->set_vlan);
  netif_dbg(dev, ifdown, dev->net, "free pdata");
  kfree(pdata);
  pdata = ((void*)0);
  dev->data[0] = 0;
 }
}
