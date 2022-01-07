
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct devlink_dpipe_match {int field_id; int * header; void* type; int member_0; } ;




 int DEVLINK_DPIPE_FIELD_IPV4_DST_IP ;
 int DEVLINK_DPIPE_FIELD_IPV6_DST_IP ;
 void* DEVLINK_DPIPE_MATCH_TYPE_FIELD_EXACT ;
 int EINVAL ;
 int MLXSW_SP_DPIPE_FIELD_METADATA_ERIF_PORT ;
 int WARN_ON (int) ;
 int devlink_dpipe_header_ipv4 ;
 int devlink_dpipe_header_ipv6 ;
 int devlink_dpipe_match_put (struct sk_buff*,struct devlink_dpipe_match*) ;
 int mlxsw_sp_dpipe_header_metadata ;

__attribute__((used)) static int mlxsw_sp_dpipe_table_host_matches_dump(struct sk_buff *skb, int type)
{
 struct devlink_dpipe_match match = {0};
 int err;

 match.type = DEVLINK_DPIPE_MATCH_TYPE_FIELD_EXACT;
 match.header = &mlxsw_sp_dpipe_header_metadata;
 match.field_id = MLXSW_SP_DPIPE_FIELD_METADATA_ERIF_PORT;

 err = devlink_dpipe_match_put(skb, &match);
 if (err)
  return err;

 switch (type) {
 case 129:
  match.type = DEVLINK_DPIPE_MATCH_TYPE_FIELD_EXACT;
  match.header = &devlink_dpipe_header_ipv4;
  match.field_id = DEVLINK_DPIPE_FIELD_IPV4_DST_IP;
  break;
 case 128:
  match.type = DEVLINK_DPIPE_MATCH_TYPE_FIELD_EXACT;
  match.header = &devlink_dpipe_header_ipv6;
  match.field_id = DEVLINK_DPIPE_FIELD_IPV6_DST_IP;
  break;
 default:
  WARN_ON(1);
  return -EINVAL;
 }

 return devlink_dpipe_match_put(skb, &match);
}
