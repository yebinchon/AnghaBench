
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct genwqe_dev {struct dentry* debugfs_root; int use_platform_recovery; int skip_recovery; int * vf_jobtimeout_msec; int kill_timeout; int ddcb_software_timeout; int err_inject; int debugfs_genwqe; int card_idx; } ;
struct dentry {int dummy; } ;


 char* GENWQE_DEVNAME ;
 unsigned int GENWQE_MAX_VFS ;
 int S_IRUGO ;
 int curr_dbg_uid0_fops ;
 int curr_dbg_uid1_fops ;
 int curr_dbg_uid2_fops ;
 int curr_regs_fops ;
 int ddcb_info_fops ;
 struct dentry* debugfs_create_dir (char*,int ) ;
 int debugfs_create_file (char*,int ,struct dentry*,struct genwqe_dev*,int *) ;
 int debugfs_create_u32 (char*,int,struct dentry*,int *) ;
 int debugfs_create_x64 (char*,int,struct dentry*,int *) ;
 int genwqe_is_privileged (struct genwqe_dev*) ;
 int info_fops ;
 int jtimer_fops ;
 int prev_dbg_uid0_fops ;
 int prev_dbg_uid1_fops ;
 int prev_dbg_uid2_fops ;
 int prev_regs_fops ;
 int queue_working_time_fops ;
 int sprintf (char*,char*,...) ;

void genwqe_init_debugfs(struct genwqe_dev *cd)
{
 struct dentry *root;
 char card_name[64];
 char name[64];
 unsigned int i;

 sprintf(card_name, "%s%d_card", GENWQE_DEVNAME, cd->card_idx);

 root = debugfs_create_dir(card_name, cd->debugfs_genwqe);


 debugfs_create_file("ddcb_info", S_IRUGO, root, cd, &ddcb_info_fops);
 debugfs_create_file("info", S_IRUGO, root, cd, &info_fops);
 debugfs_create_x64("err_inject", 0666, root, &cd->err_inject);
 debugfs_create_u32("ddcb_software_timeout", 0666, root,
      &cd->ddcb_software_timeout);
 debugfs_create_u32("kill_timeout", 0666, root, &cd->kill_timeout);


 if (!genwqe_is_privileged(cd)) {
  cd->debugfs_root = root;
  return;
 }

 debugfs_create_file("curr_regs", S_IRUGO, root, cd, &curr_regs_fops);
 debugfs_create_file("curr_dbg_uid0", S_IRUGO, root, cd,
       &curr_dbg_uid0_fops);
 debugfs_create_file("curr_dbg_uid1", S_IRUGO, root, cd,
       &curr_dbg_uid1_fops);
 debugfs_create_file("curr_dbg_uid2", S_IRUGO, root, cd,
       &curr_dbg_uid2_fops);
 debugfs_create_file("prev_regs", S_IRUGO, root, cd, &prev_regs_fops);
 debugfs_create_file("prev_dbg_uid0", S_IRUGO, root, cd,
       &prev_dbg_uid0_fops);
 debugfs_create_file("prev_dbg_uid1", S_IRUGO, root, cd,
       &prev_dbg_uid1_fops);
 debugfs_create_file("prev_dbg_uid2", S_IRUGO, root, cd,
       &prev_dbg_uid2_fops);

 for (i = 0; i < GENWQE_MAX_VFS; i++) {
  sprintf(name, "vf%u_jobtimeout_msec", i);
  debugfs_create_u32(name, 0666, root,
       &cd->vf_jobtimeout_msec[i]);
 }

 debugfs_create_file("jobtimer", S_IRUGO, root, cd, &jtimer_fops);
 debugfs_create_file("queue_working_time", S_IRUGO, root, cd,
       &queue_working_time_fops);
 debugfs_create_u32("skip_recovery", 0666, root, &cd->skip_recovery);
 debugfs_create_u32("use_platform_recovery", 0666, root,
      &cd->use_platform_recovery);

 cd->debugfs_root = root;
}
