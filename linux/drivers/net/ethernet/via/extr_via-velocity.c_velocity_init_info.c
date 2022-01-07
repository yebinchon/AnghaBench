
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct velocity_info_tbl {int txqueue; int chip_id; } ;
struct TYPE_2__ {int numq; } ;
struct velocity_info {int lock; int multicast_limit; TYPE_1__ tx; int chip_id; } ;


 int MCAM_SIZE ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void velocity_init_info(struct velocity_info *vptr,
    const struct velocity_info_tbl *info)
{
 vptr->chip_id = info->chip_id;
 vptr->tx.numq = info->txqueue;
 vptr->multicast_limit = MCAM_SIZE;
 spin_lock_init(&vptr->lock);
}
