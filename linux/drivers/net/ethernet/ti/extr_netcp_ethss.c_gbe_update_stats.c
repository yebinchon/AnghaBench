
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct gbe_priv {int num_et_stats; int * hw_stats; } ;


 int gbe_update_hw_stats_entry (struct gbe_priv*,int) ;

__attribute__((used)) static void gbe_update_stats(struct gbe_priv *gbe_dev, uint64_t *data)
{
 int i;

 for (i = 0; i < gbe_dev->num_et_stats; i++) {
  gbe_update_hw_stats_entry(gbe_dev, i);

  if (data)
   data[i] = gbe_dev->hw_stats[i];
 }
}
