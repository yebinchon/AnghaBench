
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath10k_ahb {int core_cold_rst; int cpu_init_rst; int radio_srif_rst; int radio_warm_rst; int radio_cold_rst; } ;
struct ath10k {int dummy; } ;


 int AHB_AXI_BUS_HALT_REQ ;
 int ATH10K_AHB_TCSR_WCSS0_HALTACK ;
 int ATH10K_AHB_TCSR_WCSS0_HALTREQ ;
 int ATH10K_AHB_TCSR_WCSS1_HALTACK ;
 int ATH10K_AHB_TCSR_WCSS1_HALTREQ ;
 int ATH10K_AHB_TCSR_WIFI0_GLB_CFG ;
 int ATH10K_AHB_TCSR_WIFI1_GLB_CFG ;
 int ATH10K_AHB_WLAN_CORE_ID_REG ;
 int ATH10K_DBG_AHB ;
 scalar_t__ IS_ERR_OR_NULL (int ) ;
 int TCSR_WIFIX_GLB_CFG_DISABLE_CORE_CLK ;
 int ath10k_ahb_halt_axi_bus (struct ath10k*,int,int) ;
 struct ath10k_ahb* ath10k_ahb_priv (struct ath10k*) ;
 int ath10k_ahb_read32 (struct ath10k*,int ) ;
 int ath10k_ahb_tcsr_read32 (struct ath10k*,int) ;
 int ath10k_ahb_tcsr_write32 (struct ath10k*,int,int) ;
 int ath10k_dbg (struct ath10k*,int ,char*,int) ;
 int ath10k_err (struct ath10k*,char*,...) ;
 int msleep (int) ;
 int reset_control_assert (int ) ;
 int reset_control_deassert (int ) ;

__attribute__((used)) static void ath10k_ahb_halt_chip(struct ath10k *ar)
{
 struct ath10k_ahb *ar_ahb = ath10k_ahb_priv(ar);
 u32 core_id, glb_cfg_reg, haltreq_reg, haltack_reg;
 u32 val;
 int ret;

 if (IS_ERR_OR_NULL(ar_ahb->core_cold_rst) ||
     IS_ERR_OR_NULL(ar_ahb->radio_cold_rst) ||
     IS_ERR_OR_NULL(ar_ahb->radio_warm_rst) ||
     IS_ERR_OR_NULL(ar_ahb->radio_srif_rst) ||
     IS_ERR_OR_NULL(ar_ahb->cpu_init_rst)) {
  ath10k_err(ar, "rst ctrl(s) is/are not initialized\n");
  return;
 }

 core_id = ath10k_ahb_read32(ar, ATH10K_AHB_WLAN_CORE_ID_REG);

 switch (core_id) {
 case 0:
  glb_cfg_reg = ATH10K_AHB_TCSR_WIFI0_GLB_CFG;
  haltreq_reg = ATH10K_AHB_TCSR_WCSS0_HALTREQ;
  haltack_reg = ATH10K_AHB_TCSR_WCSS0_HALTACK;
  break;
 case 1:
  glb_cfg_reg = ATH10K_AHB_TCSR_WIFI1_GLB_CFG;
  haltreq_reg = ATH10K_AHB_TCSR_WCSS1_HALTREQ;
  haltack_reg = ATH10K_AHB_TCSR_WCSS1_HALTACK;
  break;
 default:
  ath10k_err(ar, "invalid core id %d found, skipping reset sequence\n",
      core_id);
  return;
 }

 ath10k_ahb_halt_axi_bus(ar, haltreq_reg, haltack_reg);

 val = ath10k_ahb_tcsr_read32(ar, glb_cfg_reg);
 val |= TCSR_WIFIX_GLB_CFG_DISABLE_CORE_CLK;
 ath10k_ahb_tcsr_write32(ar, glb_cfg_reg, val);

 ret = reset_control_assert(ar_ahb->core_cold_rst);
 if (ret)
  ath10k_err(ar, "failed to assert core cold rst: %d\n", ret);
 msleep(1);

 ret = reset_control_assert(ar_ahb->radio_cold_rst);
 if (ret)
  ath10k_err(ar, "failed to assert radio cold rst: %d\n", ret);
 msleep(1);

 ret = reset_control_assert(ar_ahb->radio_warm_rst);
 if (ret)
  ath10k_err(ar, "failed to assert radio warm rst: %d\n", ret);
 msleep(1);

 ret = reset_control_assert(ar_ahb->radio_srif_rst);
 if (ret)
  ath10k_err(ar, "failed to assert radio srif rst: %d\n", ret);
 msleep(1);

 ret = reset_control_assert(ar_ahb->cpu_init_rst);
 if (ret)
  ath10k_err(ar, "failed to assert cpu init rst: %d\n", ret);
 msleep(10);




 val = ath10k_ahb_tcsr_read32(ar, haltreq_reg);
 val &= ~AHB_AXI_BUS_HALT_REQ;
 ath10k_ahb_tcsr_write32(ar, haltreq_reg, val);

 val = ath10k_ahb_tcsr_read32(ar, glb_cfg_reg);
 val &= ~TCSR_WIFIX_GLB_CFG_DISABLE_CORE_CLK;
 ath10k_ahb_tcsr_write32(ar, glb_cfg_reg, val);

 ret = reset_control_deassert(ar_ahb->core_cold_rst);
 if (ret)
  ath10k_err(ar, "failed to deassert core cold rst: %d\n", ret);

 ath10k_dbg(ar, ATH10K_DBG_AHB, "core %d reset done\n", core_id);
}
