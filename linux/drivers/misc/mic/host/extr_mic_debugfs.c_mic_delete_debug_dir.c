
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mic_device {int dbg_dir; } ;


 int debugfs_remove_recursive (int ) ;

void mic_delete_debug_dir(struct mic_device *mdev)
{
 if (!mdev->dbg_dir)
  return;

 debugfs_remove_recursive(mdev->dbg_dir);
}
