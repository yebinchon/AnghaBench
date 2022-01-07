
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ regs; } ;
struct mt76_dev {TYPE_1__ mmio; } ;


 int DIV_ROUND_UP (int,int) ;
 int __iowrite32_copy (scalar_t__,void const*,int ) ;

__attribute__((used)) static void mt76_mmio_write_copy(struct mt76_dev *dev, u32 offset,
     const void *data, int len)
{
 __iowrite32_copy(dev->mmio.regs + offset, data, DIV_ROUND_UP(len, 4));
}
