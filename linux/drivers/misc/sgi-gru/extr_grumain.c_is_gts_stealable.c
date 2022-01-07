
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_thread_state {int ts_ctxlock; } ;
struct gru_blade_state {int bs_kgts_sema; } ;


 int down_write_trylock (int *) ;
 scalar_t__ is_kernel_context (struct gru_thread_state*) ;
 int mutex_trylock (int *) ;

__attribute__((used)) static int is_gts_stealable(struct gru_thread_state *gts,
  struct gru_blade_state *bs)
{
 if (is_kernel_context(gts))
  return down_write_trylock(&bs->bs_kgts_sema);
 else
  return mutex_trylock(&gts->ts_ctxlock);
}
