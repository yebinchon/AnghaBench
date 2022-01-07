
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_dev {int mfc_cmds; } ;


 scalar_t__ IS_MFCV6_PLUS (struct s5p_mfc_dev*) ;
 int s5p_mfc_cmds ;
 int s5p_mfc_init_hw_cmds_v5 () ;
 int s5p_mfc_init_hw_cmds_v6 () ;

void s5p_mfc_init_hw_cmds(struct s5p_mfc_dev *dev)
{
 if (IS_MFCV6_PLUS(dev))
  s5p_mfc_cmds = s5p_mfc_init_hw_cmds_v6();
 else
  s5p_mfc_cmds = s5p_mfc_init_hw_cmds_v5();

 dev->mfc_cmds = s5p_mfc_cmds;
}
