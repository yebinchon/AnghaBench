
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct aq_nic_s {int dummy; } ;


 int aq_nic_set_multicast_list (struct aq_nic_s*,struct net_device*) ;
 struct aq_nic_s* netdev_priv (struct net_device*) ;

__attribute__((used)) static void aq_ndev_set_multicast_settings(struct net_device *ndev)
{
 struct aq_nic_s *aq_nic = netdev_priv(ndev);

 (void)aq_nic_set_multicast_list(aq_nic, ndev);
}
