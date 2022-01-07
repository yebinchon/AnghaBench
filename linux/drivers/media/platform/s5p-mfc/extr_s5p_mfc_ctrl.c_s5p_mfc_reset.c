
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_dev {scalar_t__ risc_on; } ;


 int EIO ;
 scalar_t__ IS_MFCV6_PLUS (struct s5p_mfc_dev*) ;
 int IS_MFCV7_PLUS (struct s5p_mfc_dev*) ;
 int MFC_BW_TIMEOUT ;
 scalar_t__ S5P_FIMV_FW_VERSION_V6 ;
 scalar_t__ S5P_FIMV_HOST2RISC_CMD_V6 ;
 int S5P_FIMV_MC_STATUS ;
 scalar_t__ S5P_FIMV_MFC_RESET_V6 ;
 scalar_t__ S5P_FIMV_REG_CLEAR_BEGIN_V6 ;
 int S5P_FIMV_REG_CLEAR_COUNT_V6 ;
 scalar_t__ S5P_FIMV_RISC2HOST_CMD_V6 ;
 scalar_t__ S5P_FIMV_RISC_ON_V6 ;
 scalar_t__ S5P_FIMV_SW_RESET ;
 unsigned long jiffies ;
 int mdelay (int) ;
 int mfc_debug_enter () ;
 int mfc_debug_leave () ;
 int mfc_err (char*) ;
 unsigned int mfc_read (struct s5p_mfc_dev*,int ) ;
 int mfc_write (struct s5p_mfc_dev*,int,scalar_t__) ;
 unsigned long msecs_to_jiffies (int ) ;
 scalar_t__ s5p_mfc_bus_reset (struct s5p_mfc_dev*) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

int s5p_mfc_reset(struct s5p_mfc_dev *dev)
{
 unsigned int mc_status;
 unsigned long timeout;
 int i;

 mfc_debug_enter();

 if (IS_MFCV6_PLUS(dev)) {

  mfc_write(dev, 0, S5P_FIMV_RISC2HOST_CMD_V6);
  mfc_write(dev, 0, S5P_FIMV_HOST2RISC_CMD_V6);
  mfc_write(dev, 0, S5P_FIMV_FW_VERSION_V6);

  for (i = 0; i < S5P_FIMV_REG_CLEAR_COUNT_V6; i++)
   mfc_write(dev, 0, S5P_FIMV_REG_CLEAR_BEGIN_V6 + (i*4));


  if (dev->risc_on)
   if (s5p_mfc_bus_reset(dev))
    return -EIO;




  if ((!dev->risc_on) || (!IS_MFCV7_PLUS(dev)))
   mfc_write(dev, 0, S5P_FIMV_RISC_ON_V6);

  mfc_write(dev, 0x1FFF, S5P_FIMV_MFC_RESET_V6);
  mfc_write(dev, 0, S5P_FIMV_MFC_RESET_V6);
 } else {


  mfc_write(dev, 0x3f6, S5P_FIMV_SW_RESET);

  mfc_write(dev, 0x3e2, S5P_FIMV_SW_RESET);
  mdelay(10);

  timeout = jiffies + msecs_to_jiffies(MFC_BW_TIMEOUT);

  do {
   if (time_after(jiffies, timeout)) {
    mfc_err("Timeout while resetting MFC\n");
    return -EIO;
   }

   mc_status = mfc_read(dev, S5P_FIMV_MC_STATUS);

  } while (mc_status & 0x3);

  mfc_write(dev, 0x0, S5P_FIMV_SW_RESET);
  mfc_write(dev, 0x3fe, S5P_FIMV_SW_RESET);
 }

 mfc_debug_leave();
 return 0;
}
