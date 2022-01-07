
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; } ;
struct mwifiex_private {int dummy; } ;
struct mwifiex_multicast_list {int num_multicast_addr; int mode; } ;


 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int MWIFIEX_ALL_MULTI_MODE ;
 scalar_t__ MWIFIEX_MAX_MULTICAST_LIST_SIZE ;
 int MWIFIEX_MULTICAST_MODE ;
 int MWIFIEX_PROMISC_MODE ;
 int mwifiex_copy_mcast_addr (struct mwifiex_multicast_list*,struct net_device*) ;
 struct mwifiex_private* mwifiex_netdev_get_priv (struct net_device*) ;
 int mwifiex_request_set_multicast_list (struct mwifiex_private*,struct mwifiex_multicast_list*) ;
 scalar_t__ netdev_mc_count (struct net_device*) ;

__attribute__((used)) static void mwifiex_set_multicast_list(struct net_device *dev)
{
 struct mwifiex_private *priv = mwifiex_netdev_get_priv(dev);
 struct mwifiex_multicast_list mcast_list;

 if (dev->flags & IFF_PROMISC) {
  mcast_list.mode = MWIFIEX_PROMISC_MODE;
 } else if (dev->flags & IFF_ALLMULTI ||
     netdev_mc_count(dev) > MWIFIEX_MAX_MULTICAST_LIST_SIZE) {
  mcast_list.mode = MWIFIEX_ALL_MULTI_MODE;
 } else {
  mcast_list.mode = MWIFIEX_MULTICAST_MODE;
  mcast_list.num_multicast_addr =
   mwifiex_copy_mcast_addr(&mcast_list, dev);
 }
 mwifiex_request_set_multicast_list(priv, &mcast_list);
}
