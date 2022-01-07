
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sja1105_table {int entry_count; TYPE_1__* ops; } ;
struct sja1105_static_config {struct sja1105_table* tables; } ;
typedef enum sja1105_blk_idx { ____Placeholder_sja1105_blk_idx } sja1105_blk_idx ;
struct TYPE_2__ {unsigned int packed_entry_size; } ;


 int BLK_IDX_MAX ;
 unsigned int SJA1105_SIZE_DEVICE_ID ;
 int SJA1105_SIZE_TABLE_HEADER ;

size_t
sja1105_static_config_get_length(const struct sja1105_static_config *config)
{
 unsigned int sum;
 unsigned int header_count;
 enum sja1105_blk_idx i;


 header_count = 1;
 sum = SJA1105_SIZE_DEVICE_ID;


 for (i = 0; i < BLK_IDX_MAX; i++) {
  const struct sja1105_table *table;

  table = &config->tables[i];
  if (table->entry_count)
   header_count++;

  sum += table->ops->packed_entry_size * table->entry_count;
 }

 sum += header_count * (SJA1105_SIZE_TABLE_HEADER + 4);

 sum -= 4;

 return sum;
}
