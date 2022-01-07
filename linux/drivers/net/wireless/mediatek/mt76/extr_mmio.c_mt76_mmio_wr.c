
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ regs; } ;
struct mt76_dev {TYPE_1__ mmio; } ;


 int trace_reg_wr (struct mt76_dev*,scalar_t__,scalar_t__) ;
 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static void mt76_mmio_wr(struct mt76_dev *dev, u32 offset, u32 val)
{
 trace_reg_wr(dev, offset, val);
 writel(val, dev->mmio.regs + offset);
}
