
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cosm_device {int dbg_dir; int index; } ;
typedef int name ;


 int cosm_dbg ;
 int debugfs_create_dir (char*,int ) ;
 int debugfs_create_file (char*,int,int ,struct cosm_device*,int *) ;
 int force_reset_fops ;
 int log_buf_fops ;
 int scnprintf (char*,int,char*,int ) ;

void cosm_create_debug_dir(struct cosm_device *cdev)
{
 char name[16];

 if (!cosm_dbg)
  return;

 scnprintf(name, sizeof(name), "mic%d", cdev->index);
 cdev->dbg_dir = debugfs_create_dir(name, cosm_dbg);

 debugfs_create_file("log_buf", 0444, cdev->dbg_dir, cdev,
       &log_buf_fops);
 debugfs_create_file("force_reset", 0444, cdev->dbg_dir, cdev,
       &force_reset_fops);
}
