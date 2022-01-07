
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_adapter {int dummy; } ;


 scalar_t__ qlcnic_sriov_pf_check (struct qlcnic_adapter*) ;
 scalar_t__ qlcnic_sriov_vf_check (struct qlcnic_adapter*) ;

__attribute__((used)) static inline bool qlcnic_sriov_check(struct qlcnic_adapter *adapter)
{
 bool status;

 status = (qlcnic_sriov_pf_check(adapter) ||
    qlcnic_sriov_vf_check(adapter)) ? 1 : 0;

 return status;
}
