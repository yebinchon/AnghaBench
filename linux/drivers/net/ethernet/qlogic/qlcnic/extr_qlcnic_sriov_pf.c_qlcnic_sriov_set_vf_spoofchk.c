
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_vport {int spoofchk; } ;
struct qlcnic_vf_info {int state; struct qlcnic_vport* vp; } ;
struct qlcnic_sriov {int num_vfs; struct qlcnic_vf_info* vf_info; } ;
struct qlcnic_adapter {TYPE_1__* ahw; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {struct qlcnic_sriov* sriov; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int QLC_BC_VF_STATE ;
 int netdev_err (struct net_device*,char*,int) ;
 struct qlcnic_adapter* netdev_priv (struct net_device*) ;
 int qlcnic_sriov_pf_check (struct qlcnic_adapter*) ;
 scalar_t__ test_bit (int ,int *) ;

int qlcnic_sriov_set_vf_spoofchk(struct net_device *netdev, int vf, bool chk)
{
 struct qlcnic_adapter *adapter = netdev_priv(netdev);
 struct qlcnic_sriov *sriov = adapter->ahw->sriov;
 struct qlcnic_vf_info *vf_info;
 struct qlcnic_vport *vp;

 if (!qlcnic_sriov_pf_check(adapter))
  return -EOPNOTSUPP;

 if (vf >= sriov->num_vfs)
  return -EINVAL;

 vf_info = &sriov->vf_info[vf];
 vp = vf_info->vp;
 if (test_bit(QLC_BC_VF_STATE, &vf_info->state)) {
  netdev_err(netdev,
      "Spoof check change failed for VF %d, as VF driver is loaded. Please unload VF driver and retry the operation\n",
      vf);
  return -EOPNOTSUPP;
 }

 vp->spoofchk = chk;
 return 0;
}
