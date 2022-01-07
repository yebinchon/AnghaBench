
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FH_MEM_RCSR_CHNL0_CONFIG_REG ;
 int FH_MEM_RSSR_RX_ENABLE_ERR_IRQ2DRV ;
 int FH_MEM_RSSR_RX_STATUS_REG ;
 int FH_MEM_RSSR_SHARED_CTRL_REG ;
 int FH_RSCSR_CHNL0_RBDCB_BASE_REG ;
 int FH_RSCSR_CHNL0_STTS_WPTR_REG ;
 int FH_RSCSR_CHNL0_WPTR ;
 int FH_TSSR_TX_ERROR_REG ;
 int FH_TSSR_TX_STATUS_REG ;
 int IWL_CMD (int ) ;

__attribute__((used)) static const char *get_fh_string(int cmd)
{
 switch (cmd) {
 IWL_CMD(FH_RSCSR_CHNL0_STTS_WPTR_REG);
 IWL_CMD(FH_RSCSR_CHNL0_RBDCB_BASE_REG);
 IWL_CMD(FH_RSCSR_CHNL0_WPTR);
 IWL_CMD(FH_MEM_RCSR_CHNL0_CONFIG_REG);
 IWL_CMD(FH_MEM_RSSR_SHARED_CTRL_REG);
 IWL_CMD(FH_MEM_RSSR_RX_STATUS_REG);
 IWL_CMD(FH_MEM_RSSR_RX_ENABLE_ERR_IRQ2DRV);
 IWL_CMD(FH_TSSR_TX_STATUS_REG);
 IWL_CMD(FH_TSSR_TX_ERROR_REG);
 default:
  return "UNKNOWN";
 }

}
