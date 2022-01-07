
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct vpd_params {int uclk; int mem_timing; scalar_t__ mclk; } ;
struct TYPE_6__ {int max_pkt_size; } ;
struct TYPE_4__ {int nroutes; int nfilters; int nservers; } ;
struct TYPE_5__ {scalar_t__ rev; TYPE_3__ sge; int chan_map; int tp; TYPE_1__ mc5; struct vpd_params vpd; } ;
struct adapter {TYPE_2__ params; int mc5; int cm; int pmtx; int pmrx; } ;


 int A_CIM_BOOT_CFG ;
 int A_CIM_HOST_ACC_DATA ;
 int A_PCIX_CFG ;
 int A_PL_RST ;
 int A_PM1_RX_CFG ;
 int A_PM1_RX_MODE ;
 int A_PM1_TX_MODE ;
 int A_T3DBG_GPIO_ACT_LOW ;
 int A_ULPTX_CONFIG ;
 int CH_ERR (struct adapter*,char*) ;
 int EIO ;
 int FW_FLASH_BOOT_ADDR ;
 int F_CFG_CQE_SOP_MASK ;
 int F_CLIDECEN ;
 int F_CQ ;
 int F_DMASTOPEN ;
 int F_FATALPERREN ;
 unsigned int MAX_RX_COALESCING_LEN ;
 scalar_t__ T3_REV_C ;
 int V_BOOTADDR (int) ;
 int calc_gpio_intr (struct adapter*) ;
 scalar_t__ calibrate_xgm (struct adapter*) ;
 int calibrate_xgm_t3b (struct adapter*) ;
 int chan_init_hw (struct adapter*,int ) ;
 scalar_t__ clear_sge_ctxt (struct adapter*,int,int ) ;
 int config_pcie (struct adapter*) ;
 scalar_t__ is_pcie (struct adapter*) ;
 scalar_t__ mc7_init (int *,scalar_t__,int ) ;
 int min (int ,unsigned int) ;
 int msleep (int) ;
 int partition_mem (struct adapter*,int *) ;
 scalar_t__ t3_mc5_init (int *,int ,int ,int ) ;
 scalar_t__ t3_read_reg (struct adapter*,int ) ;
 int t3_set_reg_field (struct adapter*,int ,int ,int) ;
 int t3_sge_init (struct adapter*,TYPE_3__*) ;
 int t3_tp_set_coalescing_size (struct adapter*,int ,int) ;
 int t3_tp_set_max_rxsize (struct adapter*,int ) ;
 int t3_write_reg (struct adapter*,int ,int) ;
 scalar_t__ tp_init (struct adapter*,int *) ;
 int ulp_config (struct adapter*,int *) ;

int t3_init_hw(struct adapter *adapter, u32 fw_params)
{
 int err = -EIO, attempts, i;
 const struct vpd_params *vpd = &adapter->params.vpd;

 if (adapter->params.rev > 0)
  calibrate_xgm_t3b(adapter);
 else if (calibrate_xgm(adapter))
  goto out_err;

 if (vpd->mclk) {
  partition_mem(adapter, &adapter->params.tp);

  if (mc7_init(&adapter->pmrx, vpd->mclk, vpd->mem_timing) ||
      mc7_init(&adapter->pmtx, vpd->mclk, vpd->mem_timing) ||
      mc7_init(&adapter->cm, vpd->mclk, vpd->mem_timing) ||
      t3_mc5_init(&adapter->mc5, adapter->params.mc5.nservers,
    adapter->params.mc5.nfilters,
    adapter->params.mc5.nroutes))
   goto out_err;

  for (i = 0; i < 32; i++)
   if (clear_sge_ctxt(adapter, i, F_CQ))
    goto out_err;
 }

 if (tp_init(adapter, &adapter->params.tp))
  goto out_err;

 t3_tp_set_coalescing_size(adapter,
      min(adapter->params.sge.max_pkt_size,
          MAX_RX_COALESCING_LEN), 1);
 t3_tp_set_max_rxsize(adapter,
        min(adapter->params.sge.max_pkt_size, 16384U));
 ulp_config(adapter, &adapter->params.tp);

 if (is_pcie(adapter))
  config_pcie(adapter);
 else
  t3_set_reg_field(adapter, A_PCIX_CFG, 0,
     F_DMASTOPEN | F_CLIDECEN);

 if (adapter->params.rev == T3_REV_C)
  t3_set_reg_field(adapter, A_ULPTX_CONFIG, 0,
     F_CFG_CQE_SOP_MASK);

 t3_write_reg(adapter, A_PM1_RX_CFG, 0xffffffff);
 t3_write_reg(adapter, A_PM1_RX_MODE, 0);
 t3_write_reg(adapter, A_PM1_TX_MODE, 0);
 chan_init_hw(adapter, adapter->params.chan_map);
 t3_sge_init(adapter, &adapter->params.sge);
 t3_set_reg_field(adapter, A_PL_RST, 0, F_FATALPERREN);

 t3_write_reg(adapter, A_T3DBG_GPIO_ACT_LOW, calc_gpio_intr(adapter));

 t3_write_reg(adapter, A_CIM_HOST_ACC_DATA, vpd->uclk | fw_params);
 t3_write_reg(adapter, A_CIM_BOOT_CFG,
       V_BOOTADDR(FW_FLASH_BOOT_ADDR >> 2));
 t3_read_reg(adapter, A_CIM_BOOT_CFG);

 attempts = 100;
 do {
  msleep(20);
 } while (t3_read_reg(adapter, A_CIM_HOST_ACC_DATA) && --attempts);
 if (!attempts) {
  CH_ERR(adapter, "uP initialization timed out\n");
  goto out_err;
 }

 err = 0;
out_err:
 return err;
}
