
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fimc_is {int * debugfs_entry; } ;
struct dentry {int dummy; } ;


 int EIO ;
 int S_IRUGO ;
 int * debugfs_create_dir (char*,int *) ;
 struct dentry* debugfs_create_file (char*,int ,int *,struct fimc_is*,int *) ;
 int fimc_is_debugfs_remove (struct fimc_is*) ;
 int fimc_is_fops ;

__attribute__((used)) static int fimc_is_debugfs_create(struct fimc_is *is)
{
 struct dentry *dentry;

 is->debugfs_entry = debugfs_create_dir("fimc_is", ((void*)0));

 dentry = debugfs_create_file("fw_log", S_IRUGO, is->debugfs_entry,
         is, &fimc_is_fops);
 if (!dentry)
  fimc_is_debugfs_remove(is);

 return is->debugfs_entry == ((void*)0) ? -EIO : 0;
}
