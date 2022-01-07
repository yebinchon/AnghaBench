
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dfs_dir; } ;
struct ubi_device {TYPE_1__ dbg; } ;


 int CONFIG_DEBUG_FS ;
 scalar_t__ IS_ENABLED (int ) ;
 int debugfs_remove_recursive (int ) ;

void ubi_debugfs_exit_dev(struct ubi_device *ubi)
{
 if (IS_ENABLED(CONFIG_DEBUG_FS))
  debugfs_remove_recursive(ubi->dbg.dfs_dir);
}
