
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct TYPE_2__ {int sub_ns; int ns; } ;
struct macb {TYPE_1__ tsu_incr; int tsu_rate; } ;


 scalar_t__ GEM_SUBNSINCR_SIZE ;
 int NSEC_PER_SEC ;
 int div_u64 (scalar_t__,int ) ;
 int div_u64_rem (int ,int ,scalar_t__*) ;

__attribute__((used)) static void gem_ptp_init_timer(struct macb *bp)
{
 u32 rem = 0;
 u64 adj;

 bp->tsu_incr.ns = div_u64_rem(NSEC_PER_SEC, bp->tsu_rate, &rem);
 if (rem) {
  adj = rem;
  adj <<= GEM_SUBNSINCR_SIZE;
  bp->tsu_incr.sub_ns = div_u64(adj, bp->tsu_rate);
 } else {
  bp->tsu_incr.sub_ns = 0;
 }
}
