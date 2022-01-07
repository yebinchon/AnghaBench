
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {scalar_t__ data; } ;
struct net_device {int dummy; } ;
struct ethtool_eee {int eee_active; int eee_enabled; } ;
struct ax88179_data {int eee_active; int eee_enabled; } ;


 int ax88179_ethtool_get_eee (struct usbnet*,struct ethtool_eee*) ;
 struct usbnet* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ax88179_get_eee(struct net_device *net, struct ethtool_eee *edata)
{
 struct usbnet *dev = netdev_priv(net);
 struct ax88179_data *priv = (struct ax88179_data *)dev->data;

 edata->eee_enabled = priv->eee_enabled;
 edata->eee_active = priv->eee_active;

 return ax88179_ethtool_get_eee(dev, edata);
}
