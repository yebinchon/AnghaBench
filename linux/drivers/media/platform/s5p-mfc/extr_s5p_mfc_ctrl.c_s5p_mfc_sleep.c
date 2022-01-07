
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_dev {scalar_t__ int_err; scalar_t__ int_type; scalar_t__ int_cond; int mfc_cmds; } ;


 int EIO ;
 scalar_t__ S5P_MFC_R2H_CMD_SLEEP_RET ;
 int mfc_debug_enter () ;
 int mfc_debug_leave () ;
 int mfc_err (char*,...) ;
 int s5p_mfc_clean_dev_int_flags (struct s5p_mfc_dev*) ;
 int s5p_mfc_clock_off () ;
 int s5p_mfc_clock_on () ;
 int s5p_mfc_hw_call (int ,int ,struct s5p_mfc_dev*) ;
 scalar_t__ s5p_mfc_wait_for_done_dev (struct s5p_mfc_dev*,scalar_t__) ;
 int sleep_cmd ;

int s5p_mfc_sleep(struct s5p_mfc_dev *dev)
{
 int ret;

 mfc_debug_enter();
 s5p_mfc_clock_on();
 s5p_mfc_clean_dev_int_flags(dev);
 ret = s5p_mfc_hw_call(dev->mfc_cmds, sleep_cmd, dev);
 if (ret) {
  mfc_err("Failed to send command to MFC - timeout\n");
  return ret;
 }
 if (s5p_mfc_wait_for_done_dev(dev, S5P_MFC_R2H_CMD_SLEEP_RET)) {
  mfc_err("Failed to sleep\n");
  return -EIO;
 }
 s5p_mfc_clock_off();
 dev->int_cond = 0;
 if (dev->int_err != 0 || dev->int_type !=
      S5P_MFC_R2H_CMD_SLEEP_RET) {

  mfc_err("Failed to sleep - error: %d int: %d\n", dev->int_err,
        dev->int_type);
  return -EIO;
 }
 mfc_debug_leave();
 return ret;
}
