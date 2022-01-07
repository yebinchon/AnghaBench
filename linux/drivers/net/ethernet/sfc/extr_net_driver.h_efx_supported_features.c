
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int features; int hw_features; } ;
struct efx_nic {struct net_device* net_dev; } ;
typedef int netdev_features_t ;



__attribute__((used)) static inline netdev_features_t efx_supported_features(const struct efx_nic *efx)
{
 const struct net_device *net_dev = efx->net_dev;

 return net_dev->features | net_dev->hw_features;
}
