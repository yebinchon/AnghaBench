
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlxsw_sp_rif {int dummy; } ;
struct devlink_dpipe_value {int mapping_valid; int mapping_value; int * value; } ;
struct devlink_dpipe_entry {struct devlink_dpipe_value* action_values; struct devlink_dpipe_value* match_values; } ;


 size_t MLXSW_SP_DPIPE_TABLE_ADJ_ACTION_DST_MAC ;
 size_t MLXSW_SP_DPIPE_TABLE_ADJ_ACTION_ERIF_PORT ;
 size_t MLXSW_SP_DPIPE_TABLE_ADJ_MATCH_HASH_INDEX ;
 size_t MLXSW_SP_DPIPE_TABLE_ADJ_MATCH_INDEX ;
 size_t MLXSW_SP_DPIPE_TABLE_ADJ_MATCH_SIZE ;
 int ether_addr_copy (int *,unsigned char*) ;
 int mlxsw_sp_rif_dev_ifindex (struct mlxsw_sp_rif*) ;
 int mlxsw_sp_rif_index (struct mlxsw_sp_rif*) ;

__attribute__((used)) static void
__mlxsw_sp_dpipe_table_adj_entry_fill(struct devlink_dpipe_entry *entry,
          u32 adj_index, u32 adj_size,
          u32 adj_hash_index, unsigned char *ha,
          struct mlxsw_sp_rif *rif)
{
 struct devlink_dpipe_value *value;
 u32 *p_rif_value;
 u32 *p_index;

 value = &entry->match_values[MLXSW_SP_DPIPE_TABLE_ADJ_MATCH_INDEX];
 p_index = value->value;
 *p_index = adj_index;

 value = &entry->match_values[MLXSW_SP_DPIPE_TABLE_ADJ_MATCH_SIZE];
 p_index = value->value;
 *p_index = adj_size;

 value = &entry->match_values[MLXSW_SP_DPIPE_TABLE_ADJ_MATCH_HASH_INDEX];
 p_index = value->value;
 *p_index = adj_hash_index;

 value = &entry->action_values[MLXSW_SP_DPIPE_TABLE_ADJ_ACTION_DST_MAC];
 ether_addr_copy(value->value, ha);

 value = &entry->action_values[MLXSW_SP_DPIPE_TABLE_ADJ_ACTION_ERIF_PORT];
 p_rif_value = value->value;
 *p_rif_value = mlxsw_sp_rif_index(rif);
 value->mapping_value = mlxsw_sp_rif_dev_ifindex(rif);
 value->mapping_valid = 1;
}
