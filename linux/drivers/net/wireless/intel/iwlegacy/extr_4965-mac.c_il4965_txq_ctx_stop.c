
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dma_chnl_num; } ;
struct il_priv {TYPE_1__ hw_params; } ;


 int FH49_TCSR_CHNL_TX_CONFIG_REG (int) ;
 int FH49_TSSR_TX_STATUS_REG ;
 int FH49_TSSR_TX_STATUS_REG_MSK_CHNL_IDLE (int) ;
 int IL49_SCD_TXFACT ;
 int IL_ERR (char*,int,int ) ;
 int _il_poll_bit (struct il_priv*,int ,int ,int ,int) ;
 int _il_rd (struct il_priv*,int ) ;
 int _il_wr (struct il_priv*,int ,int) ;
 int _il_wr_prph (struct il_priv*,int ,int ) ;

void
il4965_txq_ctx_stop(struct il_priv *il)
{
 int ch, ret;

 _il_wr_prph(il, IL49_SCD_TXFACT, 0);


 for (ch = 0; ch < il->hw_params.dma_chnl_num; ch++) {
  _il_wr(il, FH49_TCSR_CHNL_TX_CONFIG_REG(ch), 0x0);
  ret =
      _il_poll_bit(il, FH49_TSSR_TX_STATUS_REG,
     FH49_TSSR_TX_STATUS_REG_MSK_CHNL_IDLE(ch),
     FH49_TSSR_TX_STATUS_REG_MSK_CHNL_IDLE(ch),
     1000);
  if (ret < 0)
   IL_ERR("Timeout stopping DMA channel %d [0x%08x]",
          ch, _il_rd(il, FH49_TSSR_TX_STATUS_REG));
 }
}
