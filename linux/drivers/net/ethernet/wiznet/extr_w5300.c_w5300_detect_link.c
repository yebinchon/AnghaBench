
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w5300_priv {int link_gpio; } ;
struct net_device {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ gpio_get_value (int ) ;
 int link ;
 struct w5300_priv* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 int netif_info (struct w5300_priv*,int ,struct net_device*,char*) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static irqreturn_t w5300_detect_link(int irq, void *ndev_instance)
{
 struct net_device *ndev = ndev_instance;
 struct w5300_priv *priv = netdev_priv(ndev);

 if (netif_running(ndev)) {
  if (gpio_get_value(priv->link_gpio) != 0) {
   netif_info(priv, link, ndev, "link is up\n");
   netif_carrier_on(ndev);
  } else {
   netif_info(priv, link, ndev, "link is down\n");
   netif_carrier_off(ndev);
  }
 }

 return IRQ_HANDLED;
}
