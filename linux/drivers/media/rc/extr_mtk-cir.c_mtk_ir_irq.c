
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct mtk_ir {TYPE_1__* data; int rc; int dev; } ;
struct ir_raw_event {int pulse; int duration; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int * regs; } ;


 int IRQ_HANDLED ;
 scalar_t__ MTK_CHKDATA_SZ ;
 int MTK_IRCLR ;
 size_t MTK_IRCLR_REG ;
 int MTK_IRINT_CLR ;
 size_t MTK_IRINT_CLR_REG ;
 int MTK_IR_END (int,int) ;
 int MTK_IR_SAMPLE ;
 int MTK_MAX_SAMPLES ;
 scalar_t__ MTK_WIDTH_MASK ;
 int dev_dbg (int ,char*,scalar_t__,scalar_t__) ;
 int ir_raw_event_handle (int ) ;
 int ir_raw_event_reset (int ) ;
 int ir_raw_event_store_with_filter (int ,struct ir_raw_event*) ;
 int mtk_chkdata_reg (struct mtk_ir*,scalar_t__) ;
 scalar_t__ mtk_r32 (struct mtk_ir*,int ) ;
 int mtk_w32_mask (struct mtk_ir*,int,int ,int ) ;

__attribute__((used)) static irqreturn_t mtk_ir_irq(int irqno, void *dev_id)
{
 struct mtk_ir *ir = dev_id;
 u8 wid = 0;
 u32 i, j, val;
 struct ir_raw_event rawir = {};
 ir_raw_event_reset(ir->rc);


 rawir.pulse = 0;


 for (i = 0 ; i < MTK_CHKDATA_SZ ; i++) {
  val = mtk_r32(ir, mtk_chkdata_reg(ir, i));
  dev_dbg(ir->dev, "@reg%d=0x%08x\n", i, val);

  for (j = 0 ; j < 4 ; j++) {
   wid = (val & (MTK_WIDTH_MASK << j * 8)) >> j * 8;
   rawir.pulse = !rawir.pulse;
   rawir.duration = wid * (MTK_IR_SAMPLE + 1);
   ir_raw_event_store_with_filter(ir->rc, &rawir);
  }
 }
 if (!MTK_IR_END(wid, rawir.pulse)) {
  rawir.pulse = 0;
  rawir.duration = MTK_MAX_SAMPLES * (MTK_IR_SAMPLE + 1);
  ir_raw_event_store_with_filter(ir->rc, &rawir);
 }

 ir_raw_event_handle(ir->rc);





 mtk_w32_mask(ir, 0x1, MTK_IRCLR, ir->data->regs[MTK_IRCLR_REG]);


 mtk_w32_mask(ir, 0x1, MTK_IRINT_CLR,
       ir->data->regs[MTK_IRINT_CLR_REG]);

 return IRQ_HANDLED;
}
