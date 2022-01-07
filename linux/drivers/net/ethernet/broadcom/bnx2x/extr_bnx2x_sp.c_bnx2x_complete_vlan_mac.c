
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ error; } ;
union event_ring_elem {TYPE_1__ message; } ;
struct TYPE_5__ {int lock; } ;
struct bnx2x_raw_obj {int (* clear_pending ) (struct bnx2x_raw_obj*) ;} ;
struct bnx2x_vlan_mac_obj {TYPE_2__ exe_queue; struct bnx2x_raw_obj raw; } ;
struct bnx2x {int dummy; } ;


 int EINVAL ;
 int RAMROD_CONT ;
 int __bnx2x_exe_queue_reset_pending (struct bnx2x*,TYPE_2__*) ;
 int __bnx2x_vlan_mac_execute_step (struct bnx2x*,struct bnx2x_vlan_mac_obj*,unsigned long*) ;
 int bnx2x_exe_queue_empty (TYPE_2__*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct bnx2x_raw_obj*) ;
 scalar_t__ test_bit (int ,unsigned long*) ;

__attribute__((used)) static int bnx2x_complete_vlan_mac(struct bnx2x *bp,
       struct bnx2x_vlan_mac_obj *o,
       union event_ring_elem *cqe,
       unsigned long *ramrod_flags)
{
 struct bnx2x_raw_obj *r = &o->raw;
 int rc;




 spin_lock_bh(&o->exe_queue.lock);


 __bnx2x_exe_queue_reset_pending(bp, &o->exe_queue);


 r->clear_pending(r);

 spin_unlock_bh(&o->exe_queue.lock);


 if (cqe->message.error)
  return -EINVAL;


 if (test_bit(RAMROD_CONT, ramrod_flags)) {
  rc = __bnx2x_vlan_mac_execute_step(bp, o, ramrod_flags);

  if (rc < 0)
   return rc;
 }


 if (!bnx2x_exe_queue_empty(&o->exe_queue))
  return 1;

 return 0;
}
