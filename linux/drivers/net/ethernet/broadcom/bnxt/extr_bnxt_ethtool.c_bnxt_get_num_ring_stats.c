
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt {int cp_nr_rings; } ;


 int ARRAY_SIZE (int ) ;
 int bnxt_get_num_tpa_ring_stats (struct bnxt*) ;
 int bnxt_ring_stats_str ;
 int bnxt_ring_sw_stats_str ;

__attribute__((used)) static int bnxt_get_num_ring_stats(struct bnxt *bp)
{
 int num_stats;

 num_stats = ARRAY_SIZE(bnxt_ring_stats_str) +
      ARRAY_SIZE(bnxt_ring_sw_stats_str) +
      bnxt_get_num_tpa_ring_stats(bp);
 return num_stats * bp->cp_nr_rings;
}
