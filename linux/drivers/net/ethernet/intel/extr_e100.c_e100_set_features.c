
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nic {int dummy; } ;
struct net_device {int features; } ;
typedef int netdev_features_t ;


 int NETIF_F_RXALL ;
 int NETIF_F_RXFCS ;
 int e100_configure ;
 int e100_exec_cb (struct nic*,int *,int ) ;
 struct nic* netdev_priv (struct net_device*) ;

__attribute__((used)) static int e100_set_features(struct net_device *netdev,
        netdev_features_t features)
{
 struct nic *nic = netdev_priv(netdev);
 netdev_features_t changed = features ^ netdev->features;

 if (!(changed & (NETIF_F_RXFCS | NETIF_F_RXALL)))
  return 0;

 netdev->features = features;
 e100_exec_cb(nic, ((void*)0), e100_configure);
 return 1;
}
