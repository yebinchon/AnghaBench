
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct w5100_priv {int link_gpio; } ;
struct net_device {int dummy; } ;


 int gpio_get_value (int ) ;
 scalar_t__ gpio_is_valid (int ) ;
 struct w5100_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 w5100_get_link(struct net_device *ndev)
{
 struct w5100_priv *priv = netdev_priv(ndev);

 if (gpio_is_valid(priv->link_gpio))
  return !!gpio_get_value(priv->link_gpio);

 return 1;
}
