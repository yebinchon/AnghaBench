
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpe_dev {int dummy; } ;


 int VPE_CLK_RESET ;
 int VPE_DATA_PATH_CLK_RESET_MASK ;
 int VPE_DATA_PATH_CLK_RESET_SHIFT ;
 int usleep_range (int,int) ;
 int write_field_reg (struct vpe_dev*,int ,int,int ,int ) ;

__attribute__((used)) static void vpe_top_reset(struct vpe_dev *dev)
{

 write_field_reg(dev, VPE_CLK_RESET, 1, VPE_DATA_PATH_CLK_RESET_MASK,
  VPE_DATA_PATH_CLK_RESET_SHIFT);

 usleep_range(100, 150);

 write_field_reg(dev, VPE_CLK_RESET, 0, VPE_DATA_PATH_CLK_RESET_MASK,
  VPE_DATA_PATH_CLK_RESET_SHIFT);
}
