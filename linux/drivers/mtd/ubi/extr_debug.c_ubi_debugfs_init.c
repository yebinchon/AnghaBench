
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG_DEBUG_FS ;
 int ENODEV ;
 int IS_ENABLED (int ) ;
 scalar_t__ IS_ERR_OR_NULL (scalar_t__) ;
 int PTR_ERR (scalar_t__) ;
 scalar_t__ debugfs_create_dir (char*,int *) ;
 scalar_t__ dfs_rootdir ;
 int pr_err (char*,int) ;

int ubi_debugfs_init(void)
{
 if (!IS_ENABLED(CONFIG_DEBUG_FS))
  return 0;

 dfs_rootdir = debugfs_create_dir("ubi", ((void*)0));
 if (IS_ERR_OR_NULL(dfs_rootdir)) {
  int err = dfs_rootdir ? PTR_ERR(dfs_rootdir) : -ENODEV;

  pr_err("UBI error: cannot create \"ubi\" debugfs directory, error %d\n",
         err);
  return err;
 }

 return 0;
}
