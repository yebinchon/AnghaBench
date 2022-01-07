
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct si476x_radio {struct dentry* debugfs; TYPE_1__ v4l2dev; } ;
struct dentry {int dummy; } ;


 scalar_t__ IS_ERR (struct dentry*) ;
 int PTR_ERR (struct dentry*) ;
 int S_IRUGO ;
 struct dentry* debugfs_create_dir (int ,int *) ;
 struct dentry* debugfs_create_file (char*,int ,struct dentry*,struct si476x_radio*,int *) ;
 int debugfs_remove_recursive (struct dentry*) ;
 int dev_name (int ) ;
 int radio_acf_fops ;
 int radio_agc_fops ;
 int radio_rds_blckcnt_fops ;
 int radio_rsq_fops ;
 int radio_rsq_primary_fops ;

__attribute__((used)) static int si476x_radio_init_debugfs(struct si476x_radio *radio)
{
 struct dentry *dentry;
 int ret;

 dentry = debugfs_create_dir(dev_name(radio->v4l2dev.dev), ((void*)0));
 if (IS_ERR(dentry)) {
  ret = PTR_ERR(dentry);
  goto exit;
 }
 radio->debugfs = dentry;

 dentry = debugfs_create_file("acf", S_IRUGO,
         radio->debugfs, radio, &radio_acf_fops);
 if (IS_ERR(dentry)) {
  ret = PTR_ERR(dentry);
  goto cleanup;
 }

 dentry = debugfs_create_file("rds_blckcnt", S_IRUGO,
         radio->debugfs, radio,
         &radio_rds_blckcnt_fops);
 if (IS_ERR(dentry)) {
  ret = PTR_ERR(dentry);
  goto cleanup;
 }

 dentry = debugfs_create_file("agc", S_IRUGO,
         radio->debugfs, radio, &radio_agc_fops);
 if (IS_ERR(dentry)) {
  ret = PTR_ERR(dentry);
  goto cleanup;
 }

 dentry = debugfs_create_file("rsq", S_IRUGO,
         radio->debugfs, radio, &radio_rsq_fops);
 if (IS_ERR(dentry)) {
  ret = PTR_ERR(dentry);
  goto cleanup;
 }

 dentry = debugfs_create_file("rsq_primary", S_IRUGO,
         radio->debugfs, radio,
         &radio_rsq_primary_fops);
 if (IS_ERR(dentry)) {
  ret = PTR_ERR(dentry);
  goto cleanup;
 }

 return 0;
cleanup:
 debugfs_remove_recursive(radio->debugfs);
exit:
 return ret;
}
