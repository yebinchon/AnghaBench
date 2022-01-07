
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ regs; } ;
struct mt76_dev {TYPE_1__ mmio; } ;


 scalar_t__ readl (scalar_t__) ;
 int trace_reg_rr (struct mt76_dev*,scalar_t__,scalar_t__) ;

__attribute__((used)) static u32 mt76_mmio_rr(struct mt76_dev *dev, u32 offset)
{
 u32 val;

 val = readl(dev->mmio.regs + offset);
 trace_reg_rr(dev, offset, val);

 return val;
}
