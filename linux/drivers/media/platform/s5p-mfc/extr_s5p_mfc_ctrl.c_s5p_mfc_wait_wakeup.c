
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_dev {int risc_on; int mfc_cmds; } ;


 int EIO ;
 scalar_t__ IS_MFCV6_PLUS (struct s5p_mfc_dev*) ;
 int S5P_FIMV_RISC_ON_V6 ;
 int S5P_FIMV_SW_RESET ;
 int S5P_MFC_R2H_CMD_WAKEUP_RET ;
 int mfc_err (char*) ;
 int mfc_write (struct s5p_mfc_dev*,int,int ) ;
 int s5p_mfc_hw_call (int ,int ,struct s5p_mfc_dev*) ;
 scalar_t__ s5p_mfc_wait_for_done_dev (struct s5p_mfc_dev*,int ) ;
 int wakeup_cmd ;

__attribute__((used)) static int s5p_mfc_wait_wakeup(struct s5p_mfc_dev *dev)
{
 int ret;


 ret = s5p_mfc_hw_call(dev->mfc_cmds, wakeup_cmd, dev);
 if (ret) {
  mfc_err("Failed to send command to MFC - timeout\n");
  return ret;
 }


 if (IS_MFCV6_PLUS(dev)) {
  dev->risc_on = 1;
  mfc_write(dev, 0x1, S5P_FIMV_RISC_ON_V6);
 } else {
  mfc_write(dev, 0x3ff, S5P_FIMV_SW_RESET);
 }

 if (s5p_mfc_wait_for_done_dev(dev, S5P_MFC_R2H_CMD_WAKEUP_RET)) {
  mfc_err("Failed to wakeup MFC\n");
  return -EIO;
 }
 return ret;
}
