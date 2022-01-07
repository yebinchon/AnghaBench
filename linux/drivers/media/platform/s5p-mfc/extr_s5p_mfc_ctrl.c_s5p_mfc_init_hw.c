
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int virt; } ;
struct s5p_mfc_dev {int risc_on; scalar_t__ int_err; scalar_t__ int_type; scalar_t__ int_cond; int mfc_cmds; TYPE_1__ fw_buf; } ;


 int EINVAL ;
 int EIO ;
 scalar_t__ IS_MFCV10 (struct s5p_mfc_dev*) ;
 scalar_t__ IS_MFCV6_PLUS (struct s5p_mfc_dev*) ;
 int S5P_FIMV_FW_VERSION ;
 int S5P_FIMV_FW_VERSION_V6 ;
 int S5P_FIMV_MFC_CLOCK_OFF_V10 ;
 int S5P_FIMV_RISC_ON_V6 ;
 int S5P_FIMV_SW_RESET ;
 scalar_t__ S5P_MFC_R2H_CMD_FW_STATUS_RET ;
 scalar_t__ S5P_MFC_R2H_CMD_SYS_INIT_RET ;
 int mfc_debug (int,char*,...) ;
 int mfc_debug_enter () ;
 int mfc_debug_leave () ;
 int mfc_err (char*,...) ;
 unsigned int mfc_read (struct s5p_mfc_dev*,int ) ;
 int mfc_write (struct s5p_mfc_dev*,int,int ) ;
 int s5p_mfc_clean_dev_int_flags (struct s5p_mfc_dev*) ;
 int s5p_mfc_clear_cmds (struct s5p_mfc_dev*) ;
 int s5p_mfc_clock_off () ;
 int s5p_mfc_clock_on () ;
 int s5p_mfc_hw_call (int ,int ,struct s5p_mfc_dev*) ;
 int s5p_mfc_init_memctrl (struct s5p_mfc_dev*) ;
 int s5p_mfc_reset (struct s5p_mfc_dev*) ;
 scalar_t__ s5p_mfc_wait_for_done_dev (struct s5p_mfc_dev*,scalar_t__) ;
 int sys_init_cmd ;

int s5p_mfc_init_hw(struct s5p_mfc_dev *dev)
{
 unsigned int ver;
 int ret;

 mfc_debug_enter();
 if (!dev->fw_buf.virt) {
  mfc_err("Firmware memory is not allocated.\n");
  return -EINVAL;
 }


 mfc_debug(2, "MFC reset..\n");
 s5p_mfc_clock_on();
 dev->risc_on = 0;
 ret = s5p_mfc_reset(dev);
 if (ret) {
  mfc_err("Failed to reset MFC - timeout\n");
  return ret;
 }
 mfc_debug(2, "Done MFC reset..\n");

 s5p_mfc_init_memctrl(dev);

 s5p_mfc_clear_cmds(dev);

 s5p_mfc_clean_dev_int_flags(dev);
 if (IS_MFCV6_PLUS(dev)) {
  dev->risc_on = 1;
  mfc_write(dev, 0x1, S5P_FIMV_RISC_ON_V6);
 }
 else
  mfc_write(dev, 0x3ff, S5P_FIMV_SW_RESET);

 if (IS_MFCV10(dev))
  mfc_write(dev, 0x0, S5P_FIMV_MFC_CLOCK_OFF_V10);

 mfc_debug(2, "Will now wait for completion of firmware transfer\n");
 if (s5p_mfc_wait_for_done_dev(dev, S5P_MFC_R2H_CMD_FW_STATUS_RET)) {
  mfc_err("Failed to load firmware\n");
  s5p_mfc_reset(dev);
  s5p_mfc_clock_off();
  return -EIO;
 }
 s5p_mfc_clean_dev_int_flags(dev);

 ret = s5p_mfc_hw_call(dev->mfc_cmds, sys_init_cmd, dev);
 if (ret) {
  mfc_err("Failed to send command to MFC - timeout\n");
  s5p_mfc_reset(dev);
  s5p_mfc_clock_off();
  return ret;
 }
 mfc_debug(2, "Ok, now will wait for completion of hardware init\n");
 if (s5p_mfc_wait_for_done_dev(dev, S5P_MFC_R2H_CMD_SYS_INIT_RET)) {
  mfc_err("Failed to init hardware\n");
  s5p_mfc_reset(dev);
  s5p_mfc_clock_off();
  return -EIO;
 }
 dev->int_cond = 0;
 if (dev->int_err != 0 || dev->int_type !=
     S5P_MFC_R2H_CMD_SYS_INIT_RET) {

  mfc_err("Failed to init firmware - error: %d int: %d\n",
      dev->int_err, dev->int_type);
  s5p_mfc_reset(dev);
  s5p_mfc_clock_off();
  return -EIO;
 }
 if (IS_MFCV6_PLUS(dev))
  ver = mfc_read(dev, S5P_FIMV_FW_VERSION_V6);
 else
  ver = mfc_read(dev, S5P_FIMV_FW_VERSION);

 mfc_debug(2, "MFC F/W version : %02xyy, %02xmm, %02xdd\n",
  (ver >> 16) & 0xFF, (ver >> 8) & 0xFF, ver & 0xFF);
 s5p_mfc_clock_off();
 mfc_debug_leave();
 return 0;
}
