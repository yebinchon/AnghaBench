
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlxsw_sp_acl_rule_info {int dummy; } ;
struct flow_match_ipv4_addrs {TYPE_2__* mask; TYPE_1__* key; } ;
struct flow_cls_offload {int rule; } ;
struct TYPE_4__ {int dst; int src; } ;
struct TYPE_3__ {int dst; int src; } ;


 int MLXSW_AFK_ELEMENT_DST_IP_0_31 ;
 int MLXSW_AFK_ELEMENT_SRC_IP_0_31 ;
 int flow_rule_match_ipv4_addrs (int ,struct flow_match_ipv4_addrs*) ;
 int mlxsw_sp_acl_rulei_keymask_buf (struct mlxsw_sp_acl_rule_info*,int ,char*,char*,int) ;

__attribute__((used)) static void mlxsw_sp_flower_parse_ipv4(struct mlxsw_sp_acl_rule_info *rulei,
           struct flow_cls_offload *f)
{
 struct flow_match_ipv4_addrs match;

 flow_rule_match_ipv4_addrs(f->rule, &match);

 mlxsw_sp_acl_rulei_keymask_buf(rulei, MLXSW_AFK_ELEMENT_SRC_IP_0_31,
           (char *) &match.key->src,
           (char *) &match.mask->src, 4);
 mlxsw_sp_acl_rulei_keymask_buf(rulei, MLXSW_AFK_ELEMENT_DST_IP_0_31,
           (char *) &match.key->dst,
           (char *) &match.mask->dst, 4);
}
