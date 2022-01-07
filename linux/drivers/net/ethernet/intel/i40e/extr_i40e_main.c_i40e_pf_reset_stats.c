
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i40e_pf {int stat_offsets_loaded; scalar_t__ hw_csum_rx_error; TYPE_1__** veb; int stats_offsets; int stats; } ;
struct TYPE_2__ {int stat_offsets_loaded; int tc_stats_offsets; int tc_stats; int stats_offsets; int stats; } ;


 int I40E_MAX_VEB ;
 int memset (int *,int ,int) ;

void i40e_pf_reset_stats(struct i40e_pf *pf)
{
 int i;

 memset(&pf->stats, 0, sizeof(pf->stats));
 memset(&pf->stats_offsets, 0, sizeof(pf->stats_offsets));
 pf->stat_offsets_loaded = 0;

 for (i = 0; i < I40E_MAX_VEB; i++) {
  if (pf->veb[i]) {
   memset(&pf->veb[i]->stats, 0,
          sizeof(pf->veb[i]->stats));
   memset(&pf->veb[i]->stats_offsets, 0,
          sizeof(pf->veb[i]->stats_offsets));
   memset(&pf->veb[i]->tc_stats, 0,
          sizeof(pf->veb[i]->tc_stats));
   memset(&pf->veb[i]->tc_stats_offsets, 0,
          sizeof(pf->veb[i]->tc_stats_offsets));
   pf->veb[i]->stat_offsets_loaded = 0;
  }
 }
 pf->hw_csum_rx_error = 0;
}
