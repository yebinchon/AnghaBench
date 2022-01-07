
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netfront_info {TYPE_1__* xbdev; } ;
struct net_device {int dummy; } ;
typedef int netdev_features_t ;
struct TYPE_2__ {int otherend; } ;


 int NETIF_F_IPV6_CSUM ;
 int NETIF_F_SG ;
 int NETIF_F_TSO ;
 int NETIF_F_TSO6 ;
 struct netfront_info* netdev_priv (struct net_device*) ;
 int xenbus_read_unsigned (int ,char*,int ) ;

__attribute__((used)) static netdev_features_t xennet_fix_features(struct net_device *dev,
 netdev_features_t features)
{
 struct netfront_info *np = netdev_priv(dev);

 if (features & NETIF_F_SG &&
     !xenbus_read_unsigned(np->xbdev->otherend, "feature-sg", 0))
  features &= ~NETIF_F_SG;

 if (features & NETIF_F_IPV6_CSUM &&
     !xenbus_read_unsigned(np->xbdev->otherend,
      "feature-ipv6-csum-offload", 0))
  features &= ~NETIF_F_IPV6_CSUM;

 if (features & NETIF_F_TSO &&
     !xenbus_read_unsigned(np->xbdev->otherend, "feature-gso-tcpv4", 0))
  features &= ~NETIF_F_TSO;

 if (features & NETIF_F_TSO6 &&
     !xenbus_read_unsigned(np->xbdev->otherend, "feature-gso-tcpv6", 0))
  features &= ~NETIF_F_TSO6;

 return features;
}
