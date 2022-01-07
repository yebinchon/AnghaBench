
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_adapter {int state; } ;
struct net_device {int dummy; } ;


 int __QLCNIC_FW_ATTACHED ;
 int __qlcnic_set_multi (struct net_device*,int ) ;
 struct qlcnic_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ qlcnic_sriov_vf_check (struct qlcnic_adapter*) ;
 int qlcnic_sriov_vf_set_multi (struct net_device*) ;
 int test_bit (int ,int *) ;

void qlcnic_set_multi(struct net_device *netdev)
{
 struct qlcnic_adapter *adapter = netdev_priv(netdev);

 if (!test_bit(__QLCNIC_FW_ATTACHED, &adapter->state))
  return;

 if (qlcnic_sriov_vf_check(adapter))
  qlcnic_sriov_vf_set_multi(netdev);
 else
  __qlcnic_set_multi(netdev, 0);
}
