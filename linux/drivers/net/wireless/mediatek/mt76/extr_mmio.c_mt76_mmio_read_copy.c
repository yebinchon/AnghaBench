
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ regs; } ;
struct mt76_dev {TYPE_1__ mmio; } ;


 int DIV_ROUND_UP (int,int) ;
 int __ioread32_copy (void*,scalar_t__,int ) ;

__attribute__((used)) static void mt76_mmio_read_copy(struct mt76_dev *dev, u32 offset,
    void *data, int len)
{
 __ioread32_copy(data, dev->mmio.regs + offset, DIV_ROUND_UP(len, 4));
}
