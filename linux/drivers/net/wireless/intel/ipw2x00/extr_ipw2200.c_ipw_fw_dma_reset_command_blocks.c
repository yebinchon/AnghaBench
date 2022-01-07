
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_priv {int dummy; } ;
struct command_block {int dummy; } ;


 int CB_NUMBER_OF_ELEMENTS_SMALL ;
 int IPW_SHARED_SRAM_DMA_CONTROL ;
 int ipw_zero_memory (struct ipw_priv*,int ,int) ;

__attribute__((used)) static inline void ipw_fw_dma_reset_command_blocks(struct ipw_priv *priv)
{
 ipw_zero_memory(priv, IPW_SHARED_SRAM_DMA_CONTROL,
   CB_NUMBER_OF_ELEMENTS_SMALL *
   sizeof(struct command_block));
}
