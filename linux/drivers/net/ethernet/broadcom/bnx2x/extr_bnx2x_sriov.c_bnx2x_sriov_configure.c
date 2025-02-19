
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct bnx2x {scalar_t__ state; int requested_nr_virtfn; } ;


 int BNX2X_ERR (char*,...) ;
 int BNX2X_MSG_IOV ;
 int BNX2X_NR_VIRTFN (struct bnx2x*) ;
 scalar_t__ BNX2X_STATE_OPEN ;
 int DP (int ,char*,int,int) ;
 int EINVAL ;
 int IS_SRIOV (struct bnx2x*) ;
 int bnx2x_disable_sriov (struct bnx2x*) ;
 int bnx2x_enable_sriov (struct bnx2x*) ;
 int bnx2x_set_pf_tx_switching (struct bnx2x*,int) ;
 struct bnx2x* netdev_priv (int ) ;
 int pci_get_drvdata (struct pci_dev*) ;

int bnx2x_sriov_configure(struct pci_dev *dev, int num_vfs_param)
{
 struct bnx2x *bp = netdev_priv(pci_get_drvdata(dev));

 if (!IS_SRIOV(bp)) {
  BNX2X_ERR("failed to configure SR-IOV since vfdb was not allocated. Check dmesg for errors in probe stage\n");
  return -EINVAL;
 }

 DP(BNX2X_MSG_IOV, "bnx2x_sriov_configure called with %d, BNX2X_NR_VIRTFN(bp) was %d\n",
    num_vfs_param, BNX2X_NR_VIRTFN(bp));


 if (bp->state != BNX2X_STATE_OPEN) {
  BNX2X_ERR("VF num configuration via sysfs not supported while PF is down\n");
  return -EINVAL;
 }


 if (num_vfs_param > BNX2X_NR_VIRTFN(bp)) {
  BNX2X_ERR("truncating requested number of VFs (%d) down to maximum allowed (%d)\n",
     num_vfs_param, BNX2X_NR_VIRTFN(bp));
  num_vfs_param = BNX2X_NR_VIRTFN(bp);
 }

 bp->requested_nr_virtfn = num_vfs_param;
 if (num_vfs_param == 0) {
  bnx2x_set_pf_tx_switching(bp, 0);
  bnx2x_disable_sriov(bp);
  return 0;
 } else {
  return bnx2x_enable_sriov(bp);
 }
}
