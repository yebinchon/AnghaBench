
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_info {int dbg; } ;


 int debugfs_remove_recursive (int ) ;

void vop_exit_debugfs(struct vop_info *vi)
{
 debugfs_remove_recursive(vi->dbg);
}
