
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u32 ;
struct gbe_priv {int num_et_stats; int * hw_stats; } ;


 int GBE_STATSA_MODULE ;
 int GBE_STATSC_MODULE ;
 int gbe_stats_mod_visible_ver14 (struct gbe_priv*,int ) ;
 int gbe_update_hw_stats_entry (struct gbe_priv*,int) ;

__attribute__((used)) static void gbe_update_stats_ver14(struct gbe_priv *gbe_dev, uint64_t *data)
{
 u32 half_num_et_stats = (gbe_dev->num_et_stats / 2);
 int et_entry, j, pair;

 for (pair = 0; pair < 2; pair++) {
  gbe_stats_mod_visible_ver14(gbe_dev, (pair ?
            GBE_STATSC_MODULE :
            GBE_STATSA_MODULE));

  for (j = 0; j < half_num_et_stats; j++) {
   et_entry = pair * half_num_et_stats + j;
   gbe_update_hw_stats_entry(gbe_dev, et_entry);

   if (data)
    data[et_entry] = gbe_dev->hw_stats[et_entry];
  }
 }
}
