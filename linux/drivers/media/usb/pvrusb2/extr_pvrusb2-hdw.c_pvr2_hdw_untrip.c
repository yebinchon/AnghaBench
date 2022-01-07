
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_hdw {int big_lock; } ;


 int LOCK_GIVE (int ) ;
 int LOCK_TAKE (int ) ;
 int pvr2_hdw_state_sched (struct pvr2_hdw*) ;
 int pvr2_hdw_untrip_unlocked (struct pvr2_hdw*) ;

int pvr2_hdw_untrip(struct pvr2_hdw *hdw)
{
 int fl;
 LOCK_TAKE(hdw->big_lock); do {
  fl = pvr2_hdw_untrip_unlocked(hdw);
 } while (0); LOCK_GIVE(hdw->big_lock);
 if (fl) pvr2_hdw_state_sched(hdw);
 return 0;
}
