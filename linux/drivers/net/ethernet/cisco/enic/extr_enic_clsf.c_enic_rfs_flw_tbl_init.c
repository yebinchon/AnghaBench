
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ toclean; int max; int free; int * ht_head; int lock; } ;
struct TYPE_3__ {int num_arfs; } ;
struct enic {TYPE_2__ rfs_h; TYPE_1__ config; } ;


 int ENIC_RFS_FLW_MASK ;
 int INIT_HLIST_HEAD (int *) ;
 int spin_lock_init (int *) ;

void enic_rfs_flw_tbl_init(struct enic *enic)
{
 int i;

 spin_lock_init(&enic->rfs_h.lock);
 for (i = 0; i <= ENIC_RFS_FLW_MASK; i++)
  INIT_HLIST_HEAD(&enic->rfs_h.ht_head[i]);
 enic->rfs_h.max = enic->config.num_arfs;
 enic->rfs_h.free = enic->rfs_h.max;
 enic->rfs_h.toclean = 0;
}
