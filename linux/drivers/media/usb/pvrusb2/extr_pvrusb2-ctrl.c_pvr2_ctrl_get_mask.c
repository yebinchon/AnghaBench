
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pvr2_ctrl {TYPE_4__* hdw; TYPE_3__* info; } ;
struct TYPE_8__ {int big_lock; } ;
struct TYPE_5__ {int valid_bits; } ;
struct TYPE_6__ {TYPE_1__ type_bitmask; } ;
struct TYPE_7__ {scalar_t__ type; TYPE_2__ def; } ;


 int LOCK_GIVE (int ) ;
 int LOCK_TAKE (int ) ;
 scalar_t__ pvr2_ctl_bitmask ;

int pvr2_ctrl_get_mask(struct pvr2_ctrl *cptr)
{
 int ret = 0;
 if (!cptr) return 0;
 LOCK_TAKE(cptr->hdw->big_lock); do {
  if (cptr->info->type == pvr2_ctl_bitmask) {
   ret = cptr->info->def.type_bitmask.valid_bits;
  }
 } while(0); LOCK_GIVE(cptr->hdw->big_lock);
 return ret;
}
