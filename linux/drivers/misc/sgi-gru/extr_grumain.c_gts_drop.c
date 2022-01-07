
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_thread_state {scalar_t__ ts_gms; int ts_refcnt; } ;


 int STAT (int ) ;
 scalar_t__ atomic_dec_return (int *) ;
 int gru_drop_mmu_notifier (scalar_t__) ;
 int gts_free ;
 int kfree (struct gru_thread_state*) ;

void gts_drop(struct gru_thread_state *gts)
{
 if (gts && atomic_dec_return(&gts->ts_refcnt) == 0) {
  if (gts->ts_gms)
   gru_drop_mmu_notifier(gts->ts_gms);
  kfree(gts);
  STAT(gts_free);
 }
}
