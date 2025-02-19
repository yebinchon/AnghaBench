
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct qlcnic_info {int dummy; } ;
struct qlcnic_adapter {int dummy; } ;


 int EIO ;
 int qlcnic_sriov_pf_cal_res_limit (struct qlcnic_adapter*,struct qlcnic_info*,int ) ;
 int qlcnic_sriov_set_vf_acl (struct qlcnic_adapter*,int ) ;

__attribute__((used)) static int qlcnic_sriov_set_vf_vport_info(struct qlcnic_adapter *adapter,
       u16 func)
{
 struct qlcnic_info defvp_info;
 int err;

 err = qlcnic_sriov_pf_cal_res_limit(adapter, &defvp_info, func);
 if (err)
  return -EIO;

 err = qlcnic_sriov_set_vf_acl(adapter, func);
 if (err)
  return err;

 return 0;
}
