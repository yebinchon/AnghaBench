
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_adapter {int portnum; int netdev; int pdev; } ;


 int netdev_info (int ,char*,int ) ;
 int pci_disable_sriov (int ) ;
 int qlcnic_sriov_enable_check (struct qlcnic_adapter*) ;
 int qlcnic_sriov_pf_check (struct qlcnic_adapter*) ;

void qlcnic_sriov_pf_disable(struct qlcnic_adapter *adapter)
{
 if (!qlcnic_sriov_pf_check(adapter))
  return;

 if (!qlcnic_sriov_enable_check(adapter))
  return;

 pci_disable_sriov(adapter->pdev);
 netdev_info(adapter->netdev,
      "SR-IOV is disabled successfully on port %d\n",
      adapter->portnum);
}
