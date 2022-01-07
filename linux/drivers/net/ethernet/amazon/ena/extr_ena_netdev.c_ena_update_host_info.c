
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int features; } ;
struct ena_admin_host_info {int* supported_network_features; } ;


 int GENMASK_ULL (int,int) ;

__attribute__((used)) static void ena_update_host_info(struct ena_admin_host_info *host_info,
     struct net_device *netdev)
{
 host_info->supported_network_features[0] =
  netdev->features & GENMASK_ULL(31, 0);
 host_info->supported_network_features[1] =
  (netdev->features & GENMASK_ULL(63, 32)) >> 32;
}
