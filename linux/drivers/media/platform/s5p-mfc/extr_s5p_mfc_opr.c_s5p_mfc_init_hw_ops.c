
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_dev {int mfc_ops; int warn_start; } ;


 scalar_t__ IS_MFCV6_PLUS (struct s5p_mfc_dev*) ;
 int S5P_FIMV_ERR_WARNINGS_START ;
 int S5P_FIMV_ERR_WARNINGS_START_V6 ;
 int s5p_mfc_init_hw_ops_v5 () ;
 int s5p_mfc_init_hw_ops_v6 () ;
 int s5p_mfc_ops ;

void s5p_mfc_init_hw_ops(struct s5p_mfc_dev *dev)
{
 if (IS_MFCV6_PLUS(dev)) {
  s5p_mfc_ops = s5p_mfc_init_hw_ops_v6();
  dev->warn_start = S5P_FIMV_ERR_WARNINGS_START_V6;
 } else {
  s5p_mfc_ops = s5p_mfc_init_hw_ops_v5();
  dev->warn_start = S5P_FIMV_ERR_WARNINGS_START;
 }
 dev->mfc_ops = s5p_mfc_ops;
}
