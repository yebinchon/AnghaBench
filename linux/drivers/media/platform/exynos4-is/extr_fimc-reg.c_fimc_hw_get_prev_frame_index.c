
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fimc_dev {scalar_t__ regs; TYPE_1__* drv_data; } ;
typedef int s32 ;
struct TYPE_2__ {int cistatus2; } ;


 scalar_t__ FIMC_REG_CISTATUS2 ;
 int readl (scalar_t__) ;

s32 fimc_hw_get_prev_frame_index(struct fimc_dev *dev)
{
 s32 reg;

 if (!dev->drv_data->cistatus2)
  return -1;

 reg = readl(dev->regs + FIMC_REG_CISTATUS2);
 return ((reg >> 7) & 0x3f) - 1;
}
