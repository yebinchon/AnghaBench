
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_thread_state {scalar_t__ ts_gru; } ;
struct gru_blade_state {int bs_async_dsr_bytes; int bs_async_cbrs; int bs_kgts_sema; struct gru_thread_state* bs_kgts; struct completion* bs_async_wq; } ;
struct completion {int dummy; } ;


 int ASYNC_BID_TO_HAN (int) ;
 int down_write (int *) ;
 struct gru_blade_state** gru_base ;
 int gru_unload_context (struct gru_thread_state*,int ) ;
 int up_write (int *) ;

unsigned long gru_reserve_async_resources(int blade_id, int cbrs, int dsr_bytes,
   struct completion *cmp)
{
 struct gru_blade_state *bs;
 struct gru_thread_state *kgts;
 int ret = 0;

 bs = gru_base[blade_id];

 down_write(&bs->bs_kgts_sema);


 if (bs->bs_async_dsr_bytes + bs->bs_async_cbrs)
  goto done;
 bs->bs_async_dsr_bytes = dsr_bytes;
 bs->bs_async_cbrs = cbrs;
 bs->bs_async_wq = cmp;
 kgts = bs->bs_kgts;


 if (kgts && kgts->ts_gru)
  gru_unload_context(kgts, 0);
 ret = ASYNC_BID_TO_HAN(blade_id);

done:
 up_write(&bs->bs_kgts_sema);
 return ret;
}
