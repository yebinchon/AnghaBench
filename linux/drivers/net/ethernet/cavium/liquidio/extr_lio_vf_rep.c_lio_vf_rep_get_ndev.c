
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct net_device** ndev; } ;
struct octeon_device {int pf_num; TYPE_1__ vf_rep_list; } ;
struct net_device {int dummy; } ;


 int CN23XX_MAX_VFS_PER_PF ;

__attribute__((used)) static struct net_device *
lio_vf_rep_get_ndev(struct octeon_device *oct, int ifidx)
{
 int vf_id, max_vfs = CN23XX_MAX_VFS_PER_PF + 1;
 int vfid_mask = max_vfs - 1;

 if (ifidx <= oct->pf_num * max_vfs ||
     ifidx >= oct->pf_num * max_vfs + max_vfs)
  return ((void*)0);




 vf_id = (ifidx & vfid_mask) - 1;

 return oct->vf_rep_list.ndev[vf_id];
}
