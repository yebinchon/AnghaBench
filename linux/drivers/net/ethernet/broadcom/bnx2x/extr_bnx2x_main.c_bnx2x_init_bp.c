
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int expires; } ;
struct TYPE_6__ {int phy_mutex; } ;
struct bnx2x {int drv_info_mng_owner; int fw_seq; int disable_tpa; int dropless_fc; int tx_ticks; int rx_ticks; int current_interval; int max_cos; int min_msix_vec_cnt; int dump_preset_idx; int cnic_base_cl_id; TYPE_4__ timer; int rx_ring_size; int tx_ring_size; int mrrs; TYPE_3__* dev; TYPE_2__* pdev; int iov_task; int period_task; int sp_rtnl_task; int sp_task; int vlan_reg; int stats_lock; int drv_info_mutex; int fw_mb_mutex; TYPE_1__ port; } ;
struct TYPE_10__ {int drv_mb_header; } ;
struct TYPE_8__ {int hw_features; int features; int dev_addr; } ;
struct TYPE_7__ {int dev; } ;


 int BNX2X_BTR ;
 int BNX2X_DCBX_ENABLED_OFF ;
 int BNX2X_DCBX_ENABLED_ON_NEG_ON ;
 int BNX2X_DEV_INFO (char*,int) ;
 int BNX2X_ERR (char*,int ,int ) ;
 int BNX2X_MULTI_TX_COS_E1X ;
 int BNX2X_MULTI_TX_COS_E2_E3A0 ;
 int BNX2X_MULTI_TX_COS_E3B0 ;
 int BP_FUNC (struct bnx2x*) ;
 size_t BP_FW_MB_IDX (struct bnx2x*) ;
 scalar_t__ BP_NOMCP (struct bnx2x*) ;
 size_t BP_PORT (struct bnx2x*) ;
 scalar_t__ CHIP_IS_E1 (struct bnx2x*) ;
 scalar_t__ CHIP_IS_E1x (struct bnx2x*) ;
 scalar_t__ CHIP_IS_E2 (struct bnx2x*) ;
 scalar_t__ CHIP_IS_E3A0 (struct bnx2x*) ;
 scalar_t__ CHIP_IS_E3B0 (struct bnx2x*) ;
 int CHIP_NUM (struct bnx2x*) ;
 int CHIP_REV (struct bnx2x*) ;
 scalar_t__ CHIP_REV_IS_FPGA (struct bnx2x*) ;
 scalar_t__ CHIP_REV_IS_SLOW (struct bnx2x*) ;
 scalar_t__ CNIC_SUPPORT (struct bnx2x*) ;
 int DRV_MSG_SEQ_NUMBER_MASK ;
 int FP_SB_MAX_E1x ;
 int FP_SB_MAX_E2 ;
 int HZ ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_MF_STORAGE_ONLY (struct bnx2x*) ;
 scalar_t__ IS_PF (struct bnx2x*) ;
 scalar_t__ IS_VF (struct bnx2x*) ;
 int MAX_RX_AVAIL ;
 int MAX_TX_AVAIL ;
 int NETIF_F_GRO_HW ;
 int NETIF_F_LRO ;
 scalar_t__ SHMEM2_HAS (struct bnx2x*,int *********) ;
 scalar_t__ SHMEM2_RD (struct bnx2x*,int ********) ;
 int SHMEM_RD (struct bnx2x*,int ) ;
 int bnx2x_alloc_mem_bp (struct bnx2x*) ;
 int bnx2x_dcbx_init_params (struct bnx2x*) ;
 int bnx2x_dcbx_set_state (struct bnx2x*,int,int ) ;
 int bnx2x_free_mem_bp (struct bnx2x*) ;
 int bnx2x_get_dropless_info (struct bnx2x*) ;
 int bnx2x_get_hwinfo (struct bnx2x*) ;
 int bnx2x_iov_task ;
 int bnx2x_period_task ;
 int bnx2x_prev_unload (struct bnx2x*) ;
 int bnx2x_read_fwinfo (struct bnx2x*) ;
 int bnx2x_set_modes_bitmap (struct bnx2x*) ;
 int bnx2x_sp_rtnl_task ;
 int bnx2x_sp_task ;
 int bnx2x_timer ;
 int ********* dcbx_en ;
 int ******** dcbx_lldp_dcbx_stat_offset ;
 int ******** dcbx_lldp_params_offset ;
 int dev_err (int *,char*) ;
 int disable_tpa ;
 int dropless_fc ;
 int eth_zero_addr (int ) ;
 TYPE_5__* func_mb ;
 int is_kdump_kernel () ;
 int jiffies ;
 int mrrs ;
 int mutex_init (int *) ;
 int sema_init (int *,int) ;
 int timer_setup (TYPE_4__*,int ,int ) ;

__attribute__((used)) static int bnx2x_init_bp(struct bnx2x *bp)
{
 int func;
 int rc;

 mutex_init(&bp->port.phy_mutex);
 mutex_init(&bp->fw_mb_mutex);
 mutex_init(&bp->drv_info_mutex);
 sema_init(&bp->stats_lock, 1);
 bp->drv_info_mng_owner = 0;
 INIT_LIST_HEAD(&bp->vlan_reg);

 INIT_DELAYED_WORK(&bp->sp_task, bnx2x_sp_task);
 INIT_DELAYED_WORK(&bp->sp_rtnl_task, bnx2x_sp_rtnl_task);
 INIT_DELAYED_WORK(&bp->period_task, bnx2x_period_task);
 INIT_DELAYED_WORK(&bp->iov_task, bnx2x_iov_task);
 if (IS_PF(bp)) {
  rc = bnx2x_get_hwinfo(bp);
  if (rc)
   return rc;
 } else {
  eth_zero_addr(bp->dev->dev_addr);
 }

 bnx2x_set_modes_bitmap(bp);

 rc = bnx2x_alloc_mem_bp(bp);
 if (rc)
  return rc;

 bnx2x_read_fwinfo(bp);

 func = BP_FUNC(bp);


 if (IS_PF(bp) && !BP_NOMCP(bp)) {

  bp->fw_seq =
   SHMEM_RD(bp, func_mb[BP_FW_MB_IDX(bp)].drv_mb_header) &
       DRV_MSG_SEQ_NUMBER_MASK;
  BNX2X_DEV_INFO("fw_seq 0x%08x\n", bp->fw_seq);

  rc = bnx2x_prev_unload(bp);
  if (rc) {
   bnx2x_free_mem_bp(bp);
   return rc;
  }
 }

 if (CHIP_REV_IS_FPGA(bp))
  dev_err(&bp->pdev->dev, "FPGA detected\n");

 if (BP_NOMCP(bp) && (func == 0))
  dev_err(&bp->pdev->dev, "MCP disabled, must load devices in order!\n");

 bp->disable_tpa = disable_tpa;
 bp->disable_tpa |= !!IS_MF_STORAGE_ONLY(bp);

 bp->disable_tpa |= is_kdump_kernel();


 if (bp->disable_tpa) {
  bp->dev->hw_features &= ~(NETIF_F_LRO | NETIF_F_GRO_HW);
  bp->dev->features &= ~(NETIF_F_LRO | NETIF_F_GRO_HW);
 }

 if (CHIP_IS_E1(bp))
  bp->dropless_fc = 0;
 else
  bp->dropless_fc = dropless_fc | bnx2x_get_dropless_info(bp);

 bp->mrrs = mrrs;

 bp->tx_ring_size = IS_MF_STORAGE_ONLY(bp) ? 0 : MAX_TX_AVAIL;
 if (IS_VF(bp))
  bp->rx_ring_size = MAX_RX_AVAIL;


 bp->tx_ticks = (50 / BNX2X_BTR) * BNX2X_BTR;
 bp->rx_ticks = (25 / BNX2X_BTR) * BNX2X_BTR;

 bp->current_interval = CHIP_REV_IS_SLOW(bp) ? 5*HZ : HZ;

 timer_setup(&bp->timer, bnx2x_timer, 0);
 bp->timer.expires = jiffies + bp->current_interval;

 if (SHMEM2_HAS(bp, dcbx_lldp_params_offset) &&
     SHMEM2_HAS(bp, dcbx_lldp_dcbx_stat_offset) &&
     SHMEM2_HAS(bp, dcbx_en) &&
     SHMEM2_RD(bp, dcbx_lldp_params_offset) &&
     SHMEM2_RD(bp, dcbx_lldp_dcbx_stat_offset) &&
     SHMEM2_RD(bp, dcbx_en[BP_PORT(bp)])) {
  bnx2x_dcbx_set_state(bp, 1, BNX2X_DCBX_ENABLED_ON_NEG_ON);
  bnx2x_dcbx_init_params(bp);
 } else {
  bnx2x_dcbx_set_state(bp, 0, BNX2X_DCBX_ENABLED_OFF);
 }

 if (CHIP_IS_E1x(bp))
  bp->cnic_base_cl_id = FP_SB_MAX_E1x;
 else
  bp->cnic_base_cl_id = FP_SB_MAX_E2;


 if (IS_VF(bp))
  bp->max_cos = 1;
 else if (CHIP_IS_E1x(bp))
  bp->max_cos = BNX2X_MULTI_TX_COS_E1X;
 else if (CHIP_IS_E2(bp) || CHIP_IS_E3A0(bp))
  bp->max_cos = BNX2X_MULTI_TX_COS_E2_E3A0;
 else if (CHIP_IS_E3B0(bp))
  bp->max_cos = BNX2X_MULTI_TX_COS_E3B0;
 else
  BNX2X_ERR("unknown chip %x revision %x\n",
     CHIP_NUM(bp), CHIP_REV(bp));
 BNX2X_DEV_INFO("set bp->max_cos to %d\n", bp->max_cos);





 if (IS_VF(bp))
  bp->min_msix_vec_cnt = 1;
 else if (CNIC_SUPPORT(bp))
  bp->min_msix_vec_cnt = 3;
 else
  bp->min_msix_vec_cnt = 2;
 BNX2X_DEV_INFO("bp->min_msix_vec_cnt %d", bp->min_msix_vec_cnt);

 bp->dump_preset_idx = 1;

 return rc;
}
