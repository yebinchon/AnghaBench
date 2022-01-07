
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_lpss {struct dentry* debugfs; int idle_ltr; int active_ltr; int caps; int dev; } ;
struct dentry {int dummy; } ;


 scalar_t__ IS_ERR (struct dentry*) ;
 int PTR_ERR (struct dentry*) ;
 int S_IRUGO ;
 struct dentry* debugfs_create_dir (int ,int ) ;
 int debugfs_create_x32 (char*,int ,struct dentry*,int *) ;
 int dev_name (int ) ;
 int intel_lpss_cache_ltr (struct intel_lpss*) ;
 int intel_lpss_debugfs ;

__attribute__((used)) static int intel_lpss_debugfs_add(struct intel_lpss *lpss)
{
 struct dentry *dir;

 dir = debugfs_create_dir(dev_name(lpss->dev), intel_lpss_debugfs);
 if (IS_ERR(dir))
  return PTR_ERR(dir);


 intel_lpss_cache_ltr(lpss);

 debugfs_create_x32("capabilities", S_IRUGO, dir, &lpss->caps);
 debugfs_create_x32("active_ltr", S_IRUGO, dir, &lpss->active_ltr);
 debugfs_create_x32("idle_ltr", S_IRUGO, dir, &lpss->idle_ltr);

 lpss->debugfs = dir;
 return 0;
}
