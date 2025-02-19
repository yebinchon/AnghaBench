
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {int dummy; } ;
struct mwifiex_private {int dummy; } ;


 struct mwifiex_private* mwifiex_netdev_get_priv (struct net_device*) ;
 int mwifiex_set_mac_address (struct mwifiex_private*,struct net_device*,int,int ) ;

__attribute__((used)) static int
mwifiex_ndo_set_mac_address(struct net_device *dev, void *addr)
{
 struct mwifiex_private *priv = mwifiex_netdev_get_priv(dev);
 struct sockaddr *hw_addr = addr;

 return mwifiex_set_mac_address(priv, dev, 1, hw_addr->sa_data);
}
