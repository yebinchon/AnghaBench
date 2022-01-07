
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_dev {int dummy; } ;


 scalar_t__ IS_MFCV6_PLUS (struct s5p_mfc_dev*) ;
 int S5P_FIMV_HOST2RISC_CMD ;
 int S5P_FIMV_RISC2HOST_CMD ;
 int S5P_FIMV_SI_CH0_INST_ID ;
 int S5P_FIMV_SI_CH1_INST_ID ;
 int mfc_write (struct s5p_mfc_dev*,int,int ) ;

__attribute__((used)) static inline void s5p_mfc_clear_cmds(struct s5p_mfc_dev *dev)
{
 if (IS_MFCV6_PLUS(dev)) {


 } else {
  mfc_write(dev, 0xffffffff, S5P_FIMV_SI_CH0_INST_ID);
  mfc_write(dev, 0xffffffff, S5P_FIMV_SI_CH1_INST_ID);
  mfc_write(dev, 0, S5P_FIMV_RISC2HOST_CMD);
  mfc_write(dev, 0, S5P_FIMV_HOST2RISC_CMD);
 }
}
