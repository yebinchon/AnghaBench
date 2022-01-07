
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_dev {int int_type; scalar_t__ int_cond; int queue; } ;


 int ERESTARTSYS ;
 int MFC_INT_TIMEOUT ;
 int S5P_MFC_R2H_CMD_ERR_RET ;
 int mfc_debug (int,char*,int,int) ;
 int mfc_err (char*,...) ;
 int msecs_to_jiffies (int ) ;
 int wait_event_interruptible_timeout (int ,int,int ) ;

int s5p_mfc_wait_for_done_dev(struct s5p_mfc_dev *dev, int command)
{
 int ret;

 ret = wait_event_interruptible_timeout(dev->queue,
  (dev->int_cond && (dev->int_type == command
  || dev->int_type == S5P_MFC_R2H_CMD_ERR_RET)),
  msecs_to_jiffies(MFC_INT_TIMEOUT));
 if (ret == 0) {
  mfc_err("Interrupt (dev->int_type:%d, command:%d) timed out\n",
       dev->int_type, command);
  return 1;
 } else if (ret == -ERESTARTSYS) {
  mfc_err("Interrupted by a signal\n");
  return 1;
 }
 mfc_debug(1, "Finished waiting (dev->int_type:%d, command: %d)\n",
       dev->int_type, command);
 if (dev->int_type == S5P_MFC_R2H_CMD_ERR_RET)
  return 1;
 return 0;
}
