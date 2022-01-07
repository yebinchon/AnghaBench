
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hix5hd2_ir_priv {int clock; scalar_t__ regmap; } ;


 int IR_CLK ;
 int IR_CLK_ENABLE ;
 int IR_CLK_RESET ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int regmap_read (scalar_t__,int ,int *) ;
 int regmap_write (scalar_t__,int ,int ) ;

__attribute__((used)) static int hix5hd2_ir_enable(struct hix5hd2_ir_priv *dev, bool on)
{
 u32 val;
 int ret = 0;

 if (dev->regmap) {
  regmap_read(dev->regmap, IR_CLK, &val);
  if (on) {
   val &= ~IR_CLK_RESET;
   val |= IR_CLK_ENABLE;
  } else {
   val &= ~IR_CLK_ENABLE;
   val |= IR_CLK_RESET;
  }
  regmap_write(dev->regmap, IR_CLK, val);
 } else {
  if (on)
   ret = clk_prepare_enable(dev->clock);
  else
   clk_disable_unprepare(dev->clock);
 }
 return ret;
}
