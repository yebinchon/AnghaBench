
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cosm_dbg ;
 int debugfs_remove (int ) ;

void cosm_exit_debugfs(void)
{
 debugfs_remove(cosm_dbg);
}
