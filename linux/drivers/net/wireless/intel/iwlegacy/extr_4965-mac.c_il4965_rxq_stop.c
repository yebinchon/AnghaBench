
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int dummy; } ;


 int FH49_MEM_RCSR_CHNL0_CONFIG_REG ;
 int FH49_MEM_RSSR_RX_STATUS_REG ;
 int FH49_RSSR_CHNL0_RX_STATUS_CHNL_IDLE ;
 int IL_ERR (char*) ;
 int _il_poll_bit (struct il_priv*,int ,int ,int ,int) ;
 int _il_wr (struct il_priv*,int ,int ) ;

int
il4965_rxq_stop(struct il_priv *il)
{
 int ret;

 _il_wr(il, FH49_MEM_RCSR_CHNL0_CONFIG_REG, 0);
 ret = _il_poll_bit(il, FH49_MEM_RSSR_RX_STATUS_REG,
      FH49_RSSR_CHNL0_RX_STATUS_CHNL_IDLE,
      FH49_RSSR_CHNL0_RX_STATUS_CHNL_IDLE,
      1000);
 if (ret < 0)
  IL_ERR("Can't stop Rx DMA.\n");

 return 0;
}
