
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gru_blade_state {TYPE_1__* bs_kgts; int bs_kgts_sema; } ;
struct TYPE_2__ {int ts_gru; } ;


 int STAT (int ) ;
 int down_read (int *) ;
 struct gru_blade_state** gru_base ;
 int gru_load_kernel_context (struct gru_blade_state*,int) ;
 int lock_kernel_context ;
 int up_read (int *) ;
 int uv_numa_blade_id () ;

__attribute__((used)) static struct gru_blade_state *gru_lock_kernel_context(int blade_id)
{
 struct gru_blade_state *bs;
 int bid;

 STAT(lock_kernel_context);
again:
 bid = blade_id < 0 ? uv_numa_blade_id() : blade_id;
 bs = gru_base[bid];


 down_read(&bs->bs_kgts_sema);
 if (blade_id < 0 && bid != uv_numa_blade_id()) {
  up_read(&bs->bs_kgts_sema);
  goto again;
 }
 if (!bs->bs_kgts || !bs->bs_kgts->ts_gru)
  gru_load_kernel_context(bs, bid);
 return bs;

}
