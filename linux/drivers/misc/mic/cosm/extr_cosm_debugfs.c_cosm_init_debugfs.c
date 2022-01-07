
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KBUILD_MODNAME ;
 int cosm_dbg ;
 int debugfs_create_dir (int ,int *) ;

void cosm_init_debugfs(void)
{
 cosm_dbg = debugfs_create_dir(KBUILD_MODNAME, ((void*)0));
}
