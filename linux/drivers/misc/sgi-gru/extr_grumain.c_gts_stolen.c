
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_thread_state {int ts_ctxlock; } ;
struct gru_blade_state {int bs_kgts_sema; } ;


 int STAT (int ) ;
 scalar_t__ is_kernel_context (struct gru_thread_state*) ;
 int mutex_unlock (int *) ;
 int steal_kernel_context ;
 int steal_user_context ;
 int up_write (int *) ;

__attribute__((used)) static void gts_stolen(struct gru_thread_state *gts,
  struct gru_blade_state *bs)
{
 if (is_kernel_context(gts)) {
  up_write(&bs->bs_kgts_sema);
  STAT(steal_kernel_context);
 } else {
  mutex_unlock(&gts->ts_ctxlock);
  STAT(steal_user_context);
 }
}
