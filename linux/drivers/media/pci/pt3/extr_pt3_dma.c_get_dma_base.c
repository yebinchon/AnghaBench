
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ REG_DMA_BASE ;

__attribute__((used)) static u32 get_dma_base(int idx)
{
 int i;

 i = (idx == 1 || idx == 2) ? 3 - idx : idx;
 return REG_DMA_BASE + 0x18 * i;
}
