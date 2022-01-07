
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt {scalar_t__ max_tpa_v2; } ;


 int ARRAY_SIZE (int ) ;
 scalar_t__ BNXT_SUPPORTS_TPA (struct bnxt*) ;
 int bnxt_ring_tpa2_stats_str ;
 int bnxt_ring_tpa_stats_str ;

__attribute__((used)) static int bnxt_get_num_tpa_ring_stats(struct bnxt *bp)
{
 if (BNXT_SUPPORTS_TPA(bp)) {
  if (bp->max_tpa_v2)
   return ARRAY_SIZE(bnxt_ring_tpa2_stats_str);
  return ARRAY_SIZE(bnxt_ring_tpa_stats_str);
 }
 return 0;
}
