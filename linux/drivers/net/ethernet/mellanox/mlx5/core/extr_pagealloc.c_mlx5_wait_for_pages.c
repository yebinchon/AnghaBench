
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {scalar_t__ state; } ;


 int ETIMEDOUT ;
 int MAX_RECLAIM_VFS_PAGES_TIME_MSECS ;
 scalar_t__ MLX5_DEVICE_STATE_INTERNAL_ERROR ;
 unsigned long jiffies ;
 int mlx5_core_dbg (struct mlx5_core_dev*,char*,...) ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*,...) ;
 unsigned long msecs_to_jiffies (int ) ;
 int msleep (int) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

int mlx5_wait_for_pages(struct mlx5_core_dev *dev, int *pages)
{
 unsigned long end = jiffies + msecs_to_jiffies(MAX_RECLAIM_VFS_PAGES_TIME_MSECS);
 int prev_pages = *pages;


 if (dev->state == MLX5_DEVICE_STATE_INTERNAL_ERROR) {
  mlx5_core_warn(dev, "Skipping wait for vf pages stage");
  return 0;
 }

 mlx5_core_dbg(dev, "Waiting for %d pages\n", prev_pages);
 while (*pages) {
  if (time_after(jiffies, end)) {
   mlx5_core_warn(dev, "aborting while there are %d pending pages\n", *pages);
   return -ETIMEDOUT;
  }
  if (*pages < prev_pages) {
   end = jiffies + msecs_to_jiffies(MAX_RECLAIM_VFS_PAGES_TIME_MSECS);
   prev_pages = *pages;
  }
  msleep(50);
 }

 mlx5_core_dbg(dev, "All pages received\n");
 return 0;
}
