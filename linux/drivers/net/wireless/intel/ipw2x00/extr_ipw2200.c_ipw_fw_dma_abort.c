
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ last_cb_index; } ;
struct ipw_priv {TYPE_1__ sram_desc; } ;


 int DMA_CB_STOP_AND_ABORT ;
 int DMA_CONTROL_SMALL_CB_CONST_VALUE ;
 int IPW_DEBUG_FW (char*) ;
 int IPW_DMA_I_DMA_CONTROL ;
 int ipw_write_reg32 (struct ipw_priv*,int ,int) ;

__attribute__((used)) static void ipw_fw_dma_abort(struct ipw_priv *priv)
{
 u32 control = 0;

 IPW_DEBUG_FW(">> :\n");


 control = DMA_CONTROL_SMALL_CB_CONST_VALUE | DMA_CB_STOP_AND_ABORT;
 ipw_write_reg32(priv, IPW_DMA_I_DMA_CONTROL, control);
 priv->sram_desc.last_cb_index = 0;

 IPW_DEBUG_FW("<<\n");
}
