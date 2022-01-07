
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nandsim {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_3__ {struct dentry* dfs_dir; } ;
struct TYPE_4__ {TYPE_1__ dbg; } ;


 int CONFIG_DEBUG_FS ;
 int CONFIG_MTD_PARTITIONED_MASTER ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ IS_ERR_OR_NULL (struct dentry*) ;
 int NS_ERR (char*) ;
 int NS_WARN (char*) ;
 int S_IRUSR ;
 struct dentry* debugfs_create_file (char*,int ,struct dentry*,struct nandsim*,int *) ;
 int nandsim_fops ;
 TYPE_2__* nsmtd ;

__attribute__((used)) static int nandsim_debugfs_create(struct nandsim *dev)
{
 struct dentry *root = nsmtd->dbg.dfs_dir;
 struct dentry *dent;





 if (IS_ERR_OR_NULL(root)) {
  if (IS_ENABLED(CONFIG_DEBUG_FS) &&
      !IS_ENABLED(CONFIG_MTD_PARTITIONED_MASTER))
   NS_WARN("CONFIG_MTD_PARTITIONED_MASTER must be enabled to expose debugfs stuff\n");
  return 0;
 }

 dent = debugfs_create_file("nandsim_wear_report", S_IRUSR,
       root, dev, &nandsim_fops);
 if (IS_ERR_OR_NULL(dent)) {
  NS_ERR("cannot create \"nandsim_wear_report\" debugfs entry\n");
  return -1;
 }

 return 0;
}
