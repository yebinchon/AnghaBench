
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sja1105_table {struct sja1105_l2_forwarding_params_entry* entries; } ;
struct sja1105_l2_forwarding_params_entry {scalar_t__* part_spc; } ;
typedef int sja1105_config_valid_t ;


 size_t BLK_IDX_L2_FORWARDING_PARAMS ;
 int SJA1105_CONFIG_OK ;
 int SJA1105_MAX_FRAME_MEMORY ;
 int SJA1105_OVERCOMMITTED_FRAME_MEMORY ;

__attribute__((used)) static sja1105_config_valid_t
static_config_check_memory_size(const struct sja1105_table *tables)
{
 const struct sja1105_l2_forwarding_params_entry *l2_fwd_params;
 int i, mem = 0;

 l2_fwd_params = tables[BLK_IDX_L2_FORWARDING_PARAMS].entries;

 for (i = 0; i < 8; i++)
  mem += l2_fwd_params->part_spc[i];

 if (mem > SJA1105_MAX_FRAME_MEMORY)
  return SJA1105_OVERCOMMITTED_FRAME_MEMORY;

 return SJA1105_CONFIG_OK;
}
