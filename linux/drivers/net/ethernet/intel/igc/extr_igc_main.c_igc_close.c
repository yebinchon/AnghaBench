
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ dismantle; } ;


 int __igc_close (struct net_device*,int) ;
 scalar_t__ netif_device_present (struct net_device*) ;

__attribute__((used)) static int igc_close(struct net_device *netdev)
{
 if (netif_device_present(netdev) || netdev->dismantle)
  return __igc_close(netdev, 0);
 return 0;
}
