
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enic {int netdev; int vdev; } ;


 int netdev_info (int ,char*) ;
 int netif_carrier_off (int ) ;
 int netif_carrier_ok (int ) ;
 int netif_carrier_on (int ) ;
 int vnic_dev_link_status (int ) ;

__attribute__((used)) static void enic_link_check(struct enic *enic)
{
 int link_status = vnic_dev_link_status(enic->vdev);
 int carrier_ok = netif_carrier_ok(enic->netdev);

 if (link_status && !carrier_ok) {
  netdev_info(enic->netdev, "Link UP\n");
  netif_carrier_on(enic->netdev);
 } else if (!link_status && carrier_ok) {
  netdev_info(enic->netdev, "Link DOWN\n");
  netif_carrier_off(enic->netdev);
 }
}
