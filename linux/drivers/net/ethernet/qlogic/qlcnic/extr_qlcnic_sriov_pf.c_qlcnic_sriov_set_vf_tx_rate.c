
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct qlcnic_vport {int max_tx_bw; int min_tx_bw; int handle; } ;
struct qlcnic_vf_info {int state; struct qlcnic_vport* vp; } ;
struct qlcnic_sriov {int num_vfs; struct qlcnic_vf_info* vf_info; } ;
struct qlcnic_info {int max_tx_bw; int min_tx_bw; int bit_offsets; } ;
struct qlcnic_adapter {TYPE_1__* ahw; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {struct qlcnic_sriov* sriov; } ;


 int BIT_0 ;
 int EINVAL ;
 int EIO ;
 int EOPNOTSUPP ;
 int QLC_BC_VF_STATE ;
 int QLC_VF_MAX_TX_RATE ;
 int QLC_VF_MIN_TX_RATE ;
 int netdev_err (struct net_device*,char*,int,int) ;
 int netdev_info (struct net_device*,char*,int,int,int) ;
 struct qlcnic_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ qlcnic_sriov_get_vf_vport_info (struct qlcnic_adapter*,struct qlcnic_info*,int ) ;
 int qlcnic_sriov_pf_check (struct qlcnic_adapter*) ;
 scalar_t__ qlcnic_sriov_pf_set_vport_info (struct qlcnic_adapter*,struct qlcnic_info*,int ) ;
 scalar_t__ test_bit (int ,int *) ;

int qlcnic_sriov_set_vf_tx_rate(struct net_device *netdev, int vf,
    int min_tx_rate, int max_tx_rate)
{
 struct qlcnic_adapter *adapter = netdev_priv(netdev);
 struct qlcnic_sriov *sriov = adapter->ahw->sriov;
 struct qlcnic_vf_info *vf_info;
 struct qlcnic_info nic_info;
 struct qlcnic_vport *vp;
 u16 vpid;

 if (!qlcnic_sriov_pf_check(adapter))
  return -EOPNOTSUPP;

 if (vf >= sriov->num_vfs)
  return -EINVAL;

 vf_info = &sriov->vf_info[vf];
 vp = vf_info->vp;
 vpid = vp->handle;

 if (!min_tx_rate)
  min_tx_rate = QLC_VF_MIN_TX_RATE;

 if (max_tx_rate &&
     (max_tx_rate >= 10000 || max_tx_rate < min_tx_rate)) {
  netdev_err(netdev,
      "Invalid max Tx rate, allowed range is [%d - %d]",
      min_tx_rate, QLC_VF_MAX_TX_RATE);
  return -EINVAL;
 }

 if (!max_tx_rate)
  max_tx_rate = 10000;

 if (min_tx_rate &&
     (min_tx_rate > max_tx_rate || min_tx_rate < QLC_VF_MIN_TX_RATE)) {
  netdev_err(netdev,
      "Invalid min Tx rate, allowed range is [%d - %d]",
      QLC_VF_MIN_TX_RATE, max_tx_rate);
  return -EINVAL;
 }

 if (test_bit(QLC_BC_VF_STATE, &vf_info->state)) {
  if (qlcnic_sriov_get_vf_vport_info(adapter, &nic_info, vpid))
   return -EIO;

  nic_info.max_tx_bw = max_tx_rate / 100;
  nic_info.min_tx_bw = min_tx_rate / 100;
  nic_info.bit_offsets = BIT_0;

  if (qlcnic_sriov_pf_set_vport_info(adapter, &nic_info, vpid))
   return -EIO;
 }

 vp->max_tx_bw = max_tx_rate / 100;
 netdev_info(netdev,
      "Setting Max Tx rate %d (Mbps), %d %% of PF bandwidth, for VF %d\n",
      max_tx_rate, vp->max_tx_bw, vf);
 vp->min_tx_bw = min_tx_rate / 100;
 netdev_info(netdev,
      "Setting Min Tx rate %d (Mbps), %d %% of PF bandwidth, for VF %d\n",
      min_tx_rate, vp->min_tx_bw, vf);
 return 0;
}
