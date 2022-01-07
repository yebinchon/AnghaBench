
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlink_dpipe_match {int field_id; int * header; void* type; } ;
struct devlink_dpipe_action {int field_id; int * header; void* type; } ;


 void* DEVLINK_DPIPE_ACTION_TYPE_FIELD_MODIFY ;
 int DEVLINK_DPIPE_FIELD_ETHERNET_DST_MAC ;
 void* DEVLINK_DPIPE_MATCH_TYPE_FIELD_EXACT ;
 int MLXSW_SP_DPIPE_FIELD_METADATA_ADJ_HASH_INDEX ;
 int MLXSW_SP_DPIPE_FIELD_METADATA_ADJ_INDEX ;
 int MLXSW_SP_DPIPE_FIELD_METADATA_ADJ_SIZE ;
 int MLXSW_SP_DPIPE_FIELD_METADATA_ERIF_PORT ;
 size_t MLXSW_SP_DPIPE_TABLE_ADJ_ACTION_DST_MAC ;
 size_t MLXSW_SP_DPIPE_TABLE_ADJ_ACTION_ERIF_PORT ;
 size_t MLXSW_SP_DPIPE_TABLE_ADJ_MATCH_HASH_INDEX ;
 size_t MLXSW_SP_DPIPE_TABLE_ADJ_MATCH_INDEX ;
 size_t MLXSW_SP_DPIPE_TABLE_ADJ_MATCH_SIZE ;
 int devlink_dpipe_header_ethernet ;
 int mlxsw_sp_dpipe_header_metadata ;

__attribute__((used)) static void
mlxsw_sp_dpipe_table_adj_match_action_prepare(struct devlink_dpipe_match *matches,
           struct devlink_dpipe_action *actions)
{
 struct devlink_dpipe_action *action;
 struct devlink_dpipe_match *match;

 match = &matches[MLXSW_SP_DPIPE_TABLE_ADJ_MATCH_INDEX];
 match->type = DEVLINK_DPIPE_MATCH_TYPE_FIELD_EXACT;
 match->header = &mlxsw_sp_dpipe_header_metadata;
 match->field_id = MLXSW_SP_DPIPE_FIELD_METADATA_ADJ_INDEX;

 match = &matches[MLXSW_SP_DPIPE_TABLE_ADJ_MATCH_SIZE];
 match->type = DEVLINK_DPIPE_MATCH_TYPE_FIELD_EXACT;
 match->header = &mlxsw_sp_dpipe_header_metadata;
 match->field_id = MLXSW_SP_DPIPE_FIELD_METADATA_ADJ_SIZE;

 match = &matches[MLXSW_SP_DPIPE_TABLE_ADJ_MATCH_HASH_INDEX];
 match->type = DEVLINK_DPIPE_MATCH_TYPE_FIELD_EXACT;
 match->header = &mlxsw_sp_dpipe_header_metadata;
 match->field_id = MLXSW_SP_DPIPE_FIELD_METADATA_ADJ_HASH_INDEX;

 action = &actions[MLXSW_SP_DPIPE_TABLE_ADJ_ACTION_DST_MAC];
 action->type = DEVLINK_DPIPE_ACTION_TYPE_FIELD_MODIFY;
 action->header = &devlink_dpipe_header_ethernet;
 action->field_id = DEVLINK_DPIPE_FIELD_ETHERNET_DST_MAC;

 action = &actions[MLXSW_SP_DPIPE_TABLE_ADJ_ACTION_ERIF_PORT];
 action->type = DEVLINK_DPIPE_ACTION_TYPE_FIELD_MODIFY;
 action->header = &mlxsw_sp_dpipe_header_metadata;
 action->field_id = MLXSW_SP_DPIPE_FIELD_METADATA_ERIF_PORT;
}
