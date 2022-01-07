
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_dev {int dummy; } ;
struct s5p_mfc_cmd_args {int* arg; } ;


 int EIO ;
 int MFC_BW_TIMEOUT ;
 int S5P_FIMV_H2R_CMD_EMPTY ;
 int S5P_FIMV_HOST2RISC_ARG1 ;
 int S5P_FIMV_HOST2RISC_ARG2 ;
 int S5P_FIMV_HOST2RISC_ARG3 ;
 int S5P_FIMV_HOST2RISC_ARG4 ;
 int S5P_FIMV_HOST2RISC_CMD ;
 unsigned long jiffies ;
 int mfc_err (char*) ;
 int mfc_read (struct s5p_mfc_dev*,int ) ;
 int mfc_write (struct s5p_mfc_dev*,int,int ) ;
 unsigned long msecs_to_jiffies (int ) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int s5p_mfc_cmd_host2risc_v5(struct s5p_mfc_dev *dev, int cmd,
    struct s5p_mfc_cmd_args *args)
{
 int cur_cmd;
 unsigned long timeout;

 timeout = jiffies + msecs_to_jiffies(MFC_BW_TIMEOUT);

 do {
  if (time_after(jiffies, timeout)) {
   mfc_err("Timeout while waiting for hardware\n");
   return -EIO;
  }
  cur_cmd = mfc_read(dev, S5P_FIMV_HOST2RISC_CMD);
 } while (cur_cmd != S5P_FIMV_H2R_CMD_EMPTY);
 mfc_write(dev, args->arg[0], S5P_FIMV_HOST2RISC_ARG1);
 mfc_write(dev, args->arg[1], S5P_FIMV_HOST2RISC_ARG2);
 mfc_write(dev, args->arg[2], S5P_FIMV_HOST2RISC_ARG3);
 mfc_write(dev, args->arg[3], S5P_FIMV_HOST2RISC_ARG4);

 mfc_write(dev, cmd, S5P_FIMV_HOST2RISC_CMD);
 return 0;
}
