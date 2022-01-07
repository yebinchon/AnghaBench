
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_dev {int mfc_regs; } ;


 scalar_t__ IS_MFCV6_PLUS (struct s5p_mfc_dev*) ;
 int s5p_mfc_init_regs_v6_plus (struct s5p_mfc_dev*) ;

void s5p_mfc_init_regs(struct s5p_mfc_dev *dev)
{
 if (IS_MFCV6_PLUS(dev))
  dev->mfc_regs = s5p_mfc_init_regs_v6_plus(dev);
}
