
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sja1105_static_config {TYPE_1__* tables; } ;
typedef enum sja1105_blk_idx { ____Placeholder_sja1105_blk_idx } sja1105_blk_idx ;
struct TYPE_2__ {scalar_t__ entry_count; int entries; } ;


 int BLK_IDX_MAX ;
 int kfree (int ) ;

void sja1105_static_config_free(struct sja1105_static_config *config)
{
 enum sja1105_blk_idx i;

 for (i = 0; i < BLK_IDX_MAX; i++) {
  if (config->tables[i].entry_count) {
   kfree(config->tables[i].entries);
   config->tables[i].entry_count = 0;
  }
 }
}
