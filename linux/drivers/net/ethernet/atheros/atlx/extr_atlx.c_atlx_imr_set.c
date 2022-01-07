
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ hw_addr; } ;
struct atlx_adapter {TYPE_1__ hw; } ;


 scalar_t__ REG_IMR ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (unsigned int,scalar_t__) ;

__attribute__((used)) static inline void atlx_imr_set(struct atlx_adapter *adapter,
    unsigned int imr)
{
 iowrite32(imr, adapter->hw.hw_addr + REG_IMR);
 ioread32(adapter->hw.hw_addr + REG_IMR);
}
