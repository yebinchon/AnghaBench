
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct devlink_dpipe_match {int field_id; int * header; void* type; int member_0; } ;


 void* DEVLINK_DPIPE_MATCH_TYPE_FIELD_EXACT ;
 int MLXSW_SP_DPIPE_FIELD_METADATA_ADJ_HASH_INDEX ;
 int MLXSW_SP_DPIPE_FIELD_METADATA_ADJ_INDEX ;
 int MLXSW_SP_DPIPE_FIELD_METADATA_ADJ_SIZE ;
 int devlink_dpipe_match_put (struct sk_buff*,struct devlink_dpipe_match*) ;
 int mlxsw_sp_dpipe_header_metadata ;

__attribute__((used)) static int mlxsw_sp_dpipe_table_adj_matches_dump(void *priv,
       struct sk_buff *skb)
{
 struct devlink_dpipe_match match = {0};
 int err;

 match.type = DEVLINK_DPIPE_MATCH_TYPE_FIELD_EXACT;
 match.header = &mlxsw_sp_dpipe_header_metadata;
 match.field_id = MLXSW_SP_DPIPE_FIELD_METADATA_ADJ_INDEX;

 err = devlink_dpipe_match_put(skb, &match);
 if (err)
  return err;

 match.type = DEVLINK_DPIPE_MATCH_TYPE_FIELD_EXACT;
 match.header = &mlxsw_sp_dpipe_header_metadata;
 match.field_id = MLXSW_SP_DPIPE_FIELD_METADATA_ADJ_SIZE;

 err = devlink_dpipe_match_put(skb, &match);
 if (err)
  return err;

 match.type = DEVLINK_DPIPE_MATCH_TYPE_FIELD_EXACT;
 match.header = &mlxsw_sp_dpipe_header_metadata;
 match.field_id = MLXSW_SP_DPIPE_FIELD_METADATA_ADJ_HASH_INDEX;

 return devlink_dpipe_match_put(skb, &match);
}
