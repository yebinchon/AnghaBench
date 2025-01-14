
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FH49_MEM_RCSR_CHNL0_CONFIG_REG ;
 int FH49_MEM_RSSR_RX_ENABLE_ERR_IRQ2DRV ;
 int FH49_MEM_RSSR_RX_STATUS_REG ;
 int FH49_MEM_RSSR_SHARED_CTRL_REG ;
 int FH49_RSCSR_CHNL0_RBDCB_BASE_REG ;
 int FH49_RSCSR_CHNL0_STTS_WPTR_REG ;
 int FH49_RSCSR_CHNL0_WPTR ;
 int FH49_TSSR_TX_ERROR_REG ;
 int FH49_TSSR_TX_STATUS_REG ;
 int IL_CMD (int ) ;

__attribute__((used)) static const char *
il4965_get_fh_string(int cmd)
{
 switch (cmd) {
  IL_CMD(FH49_RSCSR_CHNL0_STTS_WPTR_REG);
  IL_CMD(FH49_RSCSR_CHNL0_RBDCB_BASE_REG);
  IL_CMD(FH49_RSCSR_CHNL0_WPTR);
  IL_CMD(FH49_MEM_RCSR_CHNL0_CONFIG_REG);
  IL_CMD(FH49_MEM_RSSR_SHARED_CTRL_REG);
  IL_CMD(FH49_MEM_RSSR_RX_STATUS_REG);
  IL_CMD(FH49_MEM_RSSR_RX_ENABLE_ERR_IRQ2DRV);
  IL_CMD(FH49_TSSR_TX_STATUS_REG);
  IL_CMD(FH49_TSSR_TX_ERROR_REG);
 default:
  return "UNKNOWN";
 }
}
