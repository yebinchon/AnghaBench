
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlink_dpipe_match {int field_id; int * header; int type; } ;
struct devlink_dpipe_action {int field_id; int * header; int type; } ;


 int DEVLINK_DPIPE_ACTION_TYPE_FIELD_MODIFY ;
 int DEVLINK_DPIPE_MATCH_TYPE_FIELD_EXACT ;
 int MLXSW_SP_DPIPE_FIELD_METADATA_ERIF_PORT ;
 int MLXSW_SP_DPIPE_FIELD_METADATA_L3_FORWARD ;
 int mlxsw_sp_dpipe_header_metadata ;

__attribute__((used)) static void
mlxsw_sp_erif_match_action_prepare(struct devlink_dpipe_match *match,
       struct devlink_dpipe_action *action)
{
 action->type = DEVLINK_DPIPE_ACTION_TYPE_FIELD_MODIFY;
 action->header = &mlxsw_sp_dpipe_header_metadata;
 action->field_id = MLXSW_SP_DPIPE_FIELD_METADATA_L3_FORWARD;

 match->type = DEVLINK_DPIPE_MATCH_TYPE_FIELD_EXACT;
 match->header = &mlxsw_sp_dpipe_header_metadata;
 match->field_id = MLXSW_SP_DPIPE_FIELD_METADATA_ERIF_PORT;
}
