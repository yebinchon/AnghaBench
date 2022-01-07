
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlink_dpipe_match {int field_id; int * header; void* type; } ;
struct devlink_dpipe_action {int field_id; int * header; int type; } ;




 int DEVLINK_DPIPE_ACTION_TYPE_FIELD_MODIFY ;
 int DEVLINK_DPIPE_FIELD_ETHERNET_DST_MAC ;
 int DEVLINK_DPIPE_FIELD_IPV4_DST_IP ;
 int DEVLINK_DPIPE_FIELD_IPV6_DST_IP ;
 void* DEVLINK_DPIPE_MATCH_TYPE_FIELD_EXACT ;
 int MLXSW_SP_DPIPE_FIELD_METADATA_ERIF_PORT ;
 size_t MLXSW_SP_DPIPE_TABLE_HOST_MATCH_DIP ;
 size_t MLXSW_SP_DPIPE_TABLE_HOST_MATCH_RIF ;
 int WARN_ON (int) ;
 int devlink_dpipe_header_ethernet ;
 int devlink_dpipe_header_ipv4 ;
 int devlink_dpipe_header_ipv6 ;
 int mlxsw_sp_dpipe_header_metadata ;

__attribute__((used)) static void
mlxsw_sp_dpipe_table_host_match_action_prepare(struct devlink_dpipe_match *matches,
            struct devlink_dpipe_action *action,
            int type)
{
 struct devlink_dpipe_match *match;

 match = &matches[MLXSW_SP_DPIPE_TABLE_HOST_MATCH_RIF];
 match->type = DEVLINK_DPIPE_MATCH_TYPE_FIELD_EXACT;
 match->header = &mlxsw_sp_dpipe_header_metadata;
 match->field_id = MLXSW_SP_DPIPE_FIELD_METADATA_ERIF_PORT;

 match = &matches[MLXSW_SP_DPIPE_TABLE_HOST_MATCH_DIP];
 match->type = DEVLINK_DPIPE_MATCH_TYPE_FIELD_EXACT;
 switch (type) {
 case 129:
  match->header = &devlink_dpipe_header_ipv4;
  match->field_id = DEVLINK_DPIPE_FIELD_IPV4_DST_IP;
  break;
 case 128:
  match->header = &devlink_dpipe_header_ipv6;
  match->field_id = DEVLINK_DPIPE_FIELD_IPV6_DST_IP;
  break;
 default:
  WARN_ON(1);
  return;
 }

 action->type = DEVLINK_DPIPE_ACTION_TYPE_FIELD_MODIFY;
 action->header = &devlink_dpipe_header_ethernet;
 action->field_id = DEVLINK_DPIPE_FIELD_ETHERNET_DST_MAC;
}
