
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vop_info {int dbg; TYPE_1__* vpdev; } ;
typedef int name ;
struct TYPE_2__ {int dnode; } ;


 char* KBUILD_MODNAME ;
 int debugfs_create_dir (char*,int *) ;
 int debugfs_create_file (char*,int,int ,struct vop_info*,int *) ;
 int snprintf (char*,int,char*,char*,int ) ;
 int vop_dp_fops ;
 int vop_vdev_info_fops ;

void vop_init_debugfs(struct vop_info *vi)
{
 char name[16];

 snprintf(name, sizeof(name), "%s%d", KBUILD_MODNAME, vi->vpdev->dnode);
 vi->dbg = debugfs_create_dir(name, ((void*)0));
 debugfs_create_file("dp", 0444, vi->dbg, vi, &vop_dp_fops);
 debugfs_create_file("vdev_info", 0444, vi->dbg, vi, &vop_vdev_info_fops);
}
