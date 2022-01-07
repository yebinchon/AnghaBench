
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vpe_dev {int dummy; } ;


 int VPE_CLK_ENABLE ;
 int VPE_DATA_PATH_CLK_ENABLE ;
 int VPE_VPEDMA_CLK_ENABLE ;
 int write_reg (struct vpe_dev*,int ,int) ;

__attribute__((used)) static void vpe_set_clock_enable(struct vpe_dev *dev, bool on)
{
 u32 val = 0;

 if (on)
  val = VPE_DATA_PATH_CLK_ENABLE | VPE_VPEDMA_CLK_ENABLE;
 write_reg(dev, VPE_CLK_ENABLE, val);
}
