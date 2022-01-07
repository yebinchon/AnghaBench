
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mlx5_core_dev {int dummy; } ;


 int BUILD_BUG_ON (int) ;
 int EBUSY ;
 int FW_INIT_WAIT_MS ;
 scalar_t__ FW_INIT_WARN_MESSAGE_INTERVAL ;
 scalar_t__ FW_PRE_INIT_TIMEOUT_MILI ;
 scalar_t__ fw_initializing (struct mlx5_core_dev*) ;
 unsigned long jiffies ;
 int jiffies_to_msecs (unsigned long) ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*,int) ;
 unsigned long msecs_to_jiffies (scalar_t__) ;
 int msleep (int ) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int wait_fw_init(struct mlx5_core_dev *dev, u32 max_wait_mili,
   u32 warn_time_mili)
{
 unsigned long warn = jiffies + msecs_to_jiffies(warn_time_mili);
 unsigned long end = jiffies + msecs_to_jiffies(max_wait_mili);
 int err = 0;

 BUILD_BUG_ON(FW_PRE_INIT_TIMEOUT_MILI < FW_INIT_WARN_MESSAGE_INTERVAL);

 while (fw_initializing(dev)) {
  if (time_after(jiffies, end)) {
   err = -EBUSY;
   break;
  }
  if (warn_time_mili && time_after(jiffies, warn)) {
   mlx5_core_warn(dev, "Waiting for FW initialization, timeout abort in %ds\n",
           jiffies_to_msecs(end - warn) / 1000);
   warn = jiffies + msecs_to_jiffies(warn_time_mili);
  }
  msleep(FW_INIT_WAIT_MS);
 }

 return err;
}
