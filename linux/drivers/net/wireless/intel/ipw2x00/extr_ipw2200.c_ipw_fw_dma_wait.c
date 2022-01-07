
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ last_cb_index; } ;
struct ipw_priv {TYPE_1__ sram_desc; } ;


 int IPW_DEBUG_FW (char*) ;
 int IPW_DEBUG_FW_INFO (char*,...) ;
 int IPW_RESET_REG ;
 int IPW_RESET_REG_MASTER_DISABLED ;
 int IPW_RESET_REG_STOP_MASTER ;
 int ipw_fw_dma_abort (struct ipw_priv*) ;
 scalar_t__ ipw_fw_dma_command_block_index (struct ipw_priv*) ;
 int ipw_fw_dma_dump_command_block (struct ipw_priv*) ;
 int ipw_set_bit (struct ipw_priv*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static int ipw_fw_dma_wait(struct ipw_priv *priv)
{
 u32 current_index = 0, previous_index;
 u32 watchdog = 0;

 IPW_DEBUG_FW(">> :\n");

 current_index = ipw_fw_dma_command_block_index(priv);
 IPW_DEBUG_FW_INFO("sram_desc.last_cb_index:0x%08X\n",
     (int)priv->sram_desc.last_cb_index);

 while (current_index < priv->sram_desc.last_cb_index) {
  udelay(50);
  previous_index = current_index;
  current_index = ipw_fw_dma_command_block_index(priv);

  if (previous_index < current_index) {
   watchdog = 0;
   continue;
  }
  if (++watchdog > 400) {
   IPW_DEBUG_FW_INFO("Timeout\n");
   ipw_fw_dma_dump_command_block(priv);
   ipw_fw_dma_abort(priv);
   return -1;
  }
 }

 ipw_fw_dma_abort(priv);


 ipw_set_bit(priv, IPW_RESET_REG,
      IPW_RESET_REG_MASTER_DISABLED | IPW_RESET_REG_STOP_MASTER);

 IPW_DEBUG_FW("<< dmaWaitSync\n");
 return 0;
}
