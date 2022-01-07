
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mlxsw_sp_rif {int dummy; } ;
struct devlink_dpipe_value {int mapping_valid; int * value; int value_size; int mapping_value; } ;
struct devlink_dpipe_entry {struct devlink_dpipe_value* action_values; struct devlink_dpipe_value* match_values; } ;


 size_t MLXSW_SP_DPIPE_TABLE_HOST_MATCH_DIP ;
 size_t MLXSW_SP_DPIPE_TABLE_HOST_MATCH_RIF ;
 int ether_addr_copy (int *,unsigned char*) ;
 int memcpy (int *,void*,int ) ;
 int mlxsw_sp_rif_dev_ifindex (struct mlxsw_sp_rif*) ;
 int mlxsw_sp_rif_index (struct mlxsw_sp_rif*) ;

__attribute__((used)) static void
__mlxsw_sp_dpipe_table_host_entry_fill(struct devlink_dpipe_entry *entry,
           struct mlxsw_sp_rif *rif,
           unsigned char *ha, void *dip)
{
 struct devlink_dpipe_value *value;
 u32 *rif_value;
 u8 *ha_value;


 value = &entry->match_values[MLXSW_SP_DPIPE_TABLE_HOST_MATCH_RIF];

 rif_value = value->value;
 *rif_value = mlxsw_sp_rif_index(rif);
 value->mapping_value = mlxsw_sp_rif_dev_ifindex(rif);
 value->mapping_valid = 1;


 value = &entry->match_values[MLXSW_SP_DPIPE_TABLE_HOST_MATCH_DIP];
 memcpy(value->value, dip, value->value_size);


 value = entry->action_values;
 ha_value = value->value;
 ether_addr_copy(ha_value, ha);
}
