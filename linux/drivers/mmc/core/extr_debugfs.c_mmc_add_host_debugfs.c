
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_host {int fail_mmc_request; int caps2; int caps; struct dentry* debugfs_root; } ;
struct dentry {int dummy; } ;


 int S_IRUSR ;
 int S_IWUSR ;
 struct dentry* debugfs_create_dir (int ,int *) ;
 int debugfs_create_file (char*,int,struct dentry*,struct mmc_host*,int *) ;
 int debugfs_create_x32 (char*,int,struct dentry*,int *) ;
 int fail_default_attr ;
 scalar_t__ fail_request ;
 int fault_create_debugfs_attr (char*,struct dentry*,int *) ;
 int mmc_clock_fops ;
 int mmc_hostname (struct mmc_host*) ;
 int mmc_ios_fops ;
 int setup_fault_attr (int *,scalar_t__) ;

void mmc_add_host_debugfs(struct mmc_host *host)
{
 struct dentry *root;

 root = debugfs_create_dir(mmc_hostname(host), ((void*)0));
 host->debugfs_root = root;

 debugfs_create_file("ios", S_IRUSR, root, host, &mmc_ios_fops);
 debugfs_create_x32("caps", S_IRUSR, root, &host->caps);
 debugfs_create_x32("caps2", S_IRUSR, root, &host->caps2);
 debugfs_create_file("clock", S_IRUSR | S_IWUSR, root, host,
       &mmc_clock_fops);
}
