
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gru_tlb_fault_handle {int dummy; } ;
struct TYPE_2__ {int upm_tlbmiss; } ;
struct gru_thread_state {int ts_gru; TYPE_1__ ustats; struct gru_mm_struct* ts_gms; } ;
struct gru_mm_struct {int ms_range_active; int ms_wait_queue; } ;


 int STAT (int ) ;
 scalar_t__ atomic_read (int *) ;
 int call_os_wait_queue ;
 int gru_try_dropin (int ,struct gru_thread_state*,struct gru_tlb_fault_handle*,void*) ;
 int prefetchw (struct gru_tlb_fault_handle*) ;
 int wait_event (int ,int) ;

__attribute__((used)) static int gru_user_dropin(struct gru_thread_state *gts,
      struct gru_tlb_fault_handle *tfh,
      void *cb)
{
 struct gru_mm_struct *gms = gts->ts_gms;
 int ret;

 gts->ustats.upm_tlbmiss++;
 while (1) {
  wait_event(gms->ms_wait_queue,
      atomic_read(&gms->ms_range_active) == 0);
  prefetchw(tfh);
  ret = gru_try_dropin(gts->ts_gru, gts, tfh, cb);
  if (ret <= 0)
   return ret;
  STAT(call_os_wait_queue);
 }
}
