
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct flexcop_device {int (* write_ibi_reg ) (struct flexcop_device*,int ,TYPE_2__) ;TYPE_2__ (* read_ibi_reg ) (struct flexcop_device*,int ) ;} ;
struct TYPE_5__ {int DMA1_Timer_Enable_sig; int DMA2_Timer_Enable_sig; } ;
struct TYPE_6__ {TYPE_1__ ctrl_208; } ;
typedef TYPE_2__ flexcop_ibi_value ;
typedef int flexcop_dma_index_t ;


 int FC_DMA_1 ;
 int FC_DMA_2 ;
 int ctrl_208 ;
 TYPE_2__ stub1 (struct flexcop_device*,int ) ;
 int stub2 (struct flexcop_device*,int ,TYPE_2__) ;

int flexcop_dma_control_timer_irq(struct flexcop_device *fc,
  flexcop_dma_index_t no,
  int onoff)
{
 flexcop_ibi_value v = fc->read_ibi_reg(fc, ctrl_208);

 if (no & FC_DMA_1)
  v.ctrl_208.DMA1_Timer_Enable_sig = onoff;

 if (no & FC_DMA_2)
  v.ctrl_208.DMA2_Timer_Enable_sig = onoff;

 fc->write_ibi_reg(fc, ctrl_208, v);
 return 0;
}
