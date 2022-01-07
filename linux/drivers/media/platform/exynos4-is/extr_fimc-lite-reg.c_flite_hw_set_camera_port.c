
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fimc_lite {scalar_t__ regs; } ;


 scalar_t__ FLITE_REG_CIGENERAL ;
 int FLITE_REG_CIGENERAL_CAM_B ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void flite_hw_set_camera_port(struct fimc_lite *dev, int id)
{
 u32 cfg = readl(dev->regs + FLITE_REG_CIGENERAL);
 if (id == 0)
  cfg &= ~FLITE_REG_CIGENERAL_CAM_B;
 else
  cfg |= FLITE_REG_CIGENERAL_CAM_B;
 writel(cfg, dev->regs + FLITE_REG_CIGENERAL);
}
