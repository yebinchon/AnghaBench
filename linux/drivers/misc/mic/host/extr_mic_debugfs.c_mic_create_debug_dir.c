
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mic_device {int dbg_dir; int id; } ;
typedef int name ;


 int debugfs_create_dir (char*,int ) ;
 int debugfs_create_file (char*,int,int ,struct mic_device*,int *) ;
 int mic_dbg ;
 int mic_msi_irq_info_fops ;
 int mic_post_code_fops ;
 int mic_smpt_fops ;
 int scnprintf (char*,int,char*,int ) ;

void mic_create_debug_dir(struct mic_device *mdev)
{
 char name[16];

 if (!mic_dbg)
  return;

 scnprintf(name, sizeof(name), "mic%d", mdev->id);
 mdev->dbg_dir = debugfs_create_dir(name, mic_dbg);

 debugfs_create_file("smpt", 0444, mdev->dbg_dir, mdev,
       &mic_smpt_fops);

 debugfs_create_file("post_code", 0444, mdev->dbg_dir, mdev,
       &mic_post_code_fops);

 debugfs_create_file("msi_irq_info", 0444, mdev->dbg_dir, mdev,
       &mic_msi_irq_info_fops);
}
