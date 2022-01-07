
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_dev {int dummy; } ;


 int EIO ;
 int MFC_BW_TIMEOUT ;
 int S5P_FIMV_MFC_BUS_RESET_CTRL ;
 unsigned long jiffies ;
 int mfc_err (char*) ;
 unsigned int mfc_read (struct s5p_mfc_dev*,int ) ;
 int mfc_write (struct s5p_mfc_dev*,int,int ) ;
 unsigned long msecs_to_jiffies (int ) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int s5p_mfc_bus_reset(struct s5p_mfc_dev *dev)
{
 unsigned int status;
 unsigned long timeout;


 mfc_write(dev, 0x1, S5P_FIMV_MFC_BUS_RESET_CTRL);
 timeout = jiffies + msecs_to_jiffies(MFC_BW_TIMEOUT);

 do {
  if (time_after(jiffies, timeout)) {
   mfc_err("Timeout while resetting MFC.\n");
   return -EIO;
  }
  status = mfc_read(dev, S5P_FIMV_MFC_BUS_RESET_CTRL);
 } while ((status & 0x2) == 0);
 return 0;
}
