
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int hw_features; int features; } ;


 int NETIF_F_HW_CSUM ;
 int NETIF_F_RXCSUM ;
 int NETIF_F_RXHASH ;
 int NETIF_F_SG ;

__attribute__((used)) static void niu_set_basic_features(struct net_device *dev)
{
 dev->hw_features = NETIF_F_SG | NETIF_F_HW_CSUM | NETIF_F_RXHASH;
 dev->features |= dev->hw_features | NETIF_F_RXCSUM;
}
