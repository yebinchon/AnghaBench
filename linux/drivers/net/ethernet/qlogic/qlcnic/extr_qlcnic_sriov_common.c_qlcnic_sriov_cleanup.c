
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_adapter {int state; } ;


 int __QLCNIC_SRIOV_ENABLE ;
 int qlcnic_sriov_free_vlans (struct qlcnic_adapter*) ;
 scalar_t__ qlcnic_sriov_pf_check (struct qlcnic_adapter*) ;
 int qlcnic_sriov_pf_cleanup (struct qlcnic_adapter*) ;
 scalar_t__ qlcnic_sriov_vf_check (struct qlcnic_adapter*) ;
 int qlcnic_sriov_vf_cleanup (struct qlcnic_adapter*) ;
 int test_bit (int ,int *) ;

void qlcnic_sriov_cleanup(struct qlcnic_adapter *adapter)
{
 if (!test_bit(__QLCNIC_SRIOV_ENABLE, &adapter->state))
  return;

 qlcnic_sriov_free_vlans(adapter);

 if (qlcnic_sriov_pf_check(adapter))
  qlcnic_sriov_pf_cleanup(adapter);

 if (qlcnic_sriov_vf_check(adapter))
  qlcnic_sriov_vf_cleanup(adapter);
}
