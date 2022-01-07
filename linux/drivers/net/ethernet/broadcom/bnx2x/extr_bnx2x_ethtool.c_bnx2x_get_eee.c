
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct ethtool_eee {int tx_lpi_timer; int eee_enabled; int eee_active; int tx_lpi_enabled; void* lp_advertised; void* advertised; void* supported; } ;
struct TYPE_2__ {int eee_status; } ;
struct bnx2x {TYPE_1__ link_vars; } ;


 int BNX2X_MSG_ETHTOOL ;
 size_t BP_PORT (struct bnx2x*) ;
 int DP (int ,char*) ;
 int EOPNOTSUPP ;
 int SHMEM2_HAS (struct bnx2x*,int ) ;
 int SHMEM_EEE_ACTIVE_BIT ;
 int SHMEM_EEE_ADV_STATUS_MASK ;
 int SHMEM_EEE_ADV_STATUS_SHIFT ;
 int SHMEM_EEE_LPI_REQUESTED_BIT ;
 int SHMEM_EEE_LP_ADV_STATUS_MASK ;
 int SHMEM_EEE_LP_ADV_STATUS_SHIFT ;
 int SHMEM_EEE_REQUESTED_BIT ;
 int SHMEM_EEE_SUPPORTED_MASK ;
 int SHMEM_EEE_SUPPORTED_SHIFT ;
 int SHMEM_EEE_TIMER_MASK ;
 void* bnx2x_eee_to_adv (int) ;
 int * eee_status ;
 struct bnx2x* netdev_priv (struct net_device*) ;

__attribute__((used)) static int bnx2x_get_eee(struct net_device *dev, struct ethtool_eee *edata)
{
 struct bnx2x *bp = netdev_priv(dev);
 u32 eee_cfg;

 if (!SHMEM2_HAS(bp, eee_status[BP_PORT(bp)])) {
  DP(BNX2X_MSG_ETHTOOL, "BC Version does not support EEE\n");
  return -EOPNOTSUPP;
 }

 eee_cfg = bp->link_vars.eee_status;

 edata->supported =
  bnx2x_eee_to_adv((eee_cfg & SHMEM_EEE_SUPPORTED_MASK) >>
     SHMEM_EEE_SUPPORTED_SHIFT);

 edata->advertised =
  bnx2x_eee_to_adv((eee_cfg & SHMEM_EEE_ADV_STATUS_MASK) >>
     SHMEM_EEE_ADV_STATUS_SHIFT);
 edata->lp_advertised =
  bnx2x_eee_to_adv((eee_cfg & SHMEM_EEE_LP_ADV_STATUS_MASK) >>
     SHMEM_EEE_LP_ADV_STATUS_SHIFT);


 edata->tx_lpi_timer = (eee_cfg & SHMEM_EEE_TIMER_MASK) << 4;

 edata->eee_enabled = (eee_cfg & SHMEM_EEE_REQUESTED_BIT) ? 1 : 0;
 edata->eee_active = (eee_cfg & SHMEM_EEE_ACTIVE_BIT) ? 1 : 0;
 edata->tx_lpi_enabled = (eee_cfg & SHMEM_EEE_LPI_REQUESTED_BIT) ? 1 : 0;

 return 0;
}
