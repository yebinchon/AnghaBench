
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; int features; } ;
struct bnx2x {scalar_t__ recovery_state; int pdev; } ;


 int BNX2X_ERR (char*) ;
 int BNX2X_MSG_IOV ;
 scalar_t__ BNX2X_RECOVERY_DONE ;
 int CURR_CFG_MET_OS ;
 int DP (int ,char*) ;
 int EAGAIN ;
 int EPERM ;
 scalar_t__ IS_PF (struct bnx2x*) ;
 int NETIF_F_GRO_HW ;
 scalar_t__ SHMEM2_HAS (struct bnx2x*,int ) ;
 int SHMEM2_WR (struct bnx2x*,int ,int ) ;
 int bnx2x_mtu_allows_gro (int) ;
 int bnx2x_reload_if_running (struct net_device*) ;
 int curr_cfg ;
 struct bnx2x* netdev_priv (struct net_device*) ;
 scalar_t__ pci_num_vf (int ) ;

int bnx2x_change_mtu(struct net_device *dev, int new_mtu)
{
 struct bnx2x *bp = netdev_priv(dev);

 if (pci_num_vf(bp->pdev)) {
  DP(BNX2X_MSG_IOV, "VFs are enabled, can not change MTU\n");
  return -EPERM;
 }

 if (bp->recovery_state != BNX2X_RECOVERY_DONE) {
  BNX2X_ERR("Can't perform change MTU during parity recovery\n");
  return -EAGAIN;
 }





 dev->mtu = new_mtu;

 if (!bnx2x_mtu_allows_gro(new_mtu))
  dev->features &= ~NETIF_F_GRO_HW;

 if (IS_PF(bp) && SHMEM2_HAS(bp, curr_cfg))
  SHMEM2_WR(bp, curr_cfg, CURR_CFG_MET_OS);

 return bnx2x_reload_if_running(dev);
}
