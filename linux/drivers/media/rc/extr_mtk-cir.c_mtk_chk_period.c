
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mtk_ir {int dev; TYPE_1__* data; int bus; } ;
struct TYPE_2__ {int div; } ;


 int DIV_ROUND_CLOSEST (unsigned long,int) ;
 unsigned long MTK_IR_SAMPLE ;
 int clk_get_rate (int ) ;
 int dev_dbg (int ,char*,int) ;

__attribute__((used)) static inline u32 mtk_chk_period(struct mtk_ir *ir)
{
 u32 val;


 val = DIV_ROUND_CLOSEST(1000000000ul,
    clk_get_rate(ir->bus) / ir->data->div);





 val = DIV_ROUND_CLOSEST(MTK_IR_SAMPLE, val);

 dev_dbg(ir->dev, "@pwm clk  = \t%lu\n",
  clk_get_rate(ir->bus) / ir->data->div);
 dev_dbg(ir->dev, "@chkperiod = %08x\n", val);

 return val;
}
