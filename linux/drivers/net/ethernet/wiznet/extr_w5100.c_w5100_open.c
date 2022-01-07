
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w5100_priv {int link_gpio; int napi; } ;
struct net_device {int dummy; } ;


 scalar_t__ gpio_get_value (int ) ;
 int gpio_is_valid (int ) ;
 int ifup ;
 int napi_enable (int *) ;
 struct w5100_priv* netdev_priv (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 int netif_info (struct w5100_priv*,int ,struct net_device*,char*) ;
 int netif_start_queue (struct net_device*) ;
 int w5100_hw_start (struct w5100_priv*) ;

__attribute__((used)) static int w5100_open(struct net_device *ndev)
{
 struct w5100_priv *priv = netdev_priv(ndev);

 netif_info(priv, ifup, ndev, "enabling\n");
 w5100_hw_start(priv);
 napi_enable(&priv->napi);
 netif_start_queue(ndev);
 if (!gpio_is_valid(priv->link_gpio) ||
     gpio_get_value(priv->link_gpio) != 0)
  netif_carrier_on(ndev);
 return 0;
}
