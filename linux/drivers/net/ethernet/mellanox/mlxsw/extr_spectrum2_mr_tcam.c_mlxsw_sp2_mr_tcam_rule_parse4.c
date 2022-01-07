
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int addr4; } ;
struct TYPE_7__ {int addr4; } ;
struct TYPE_6__ {int addr4; } ;
struct TYPE_5__ {int addr4; } ;
struct mlxsw_sp_mr_route_key {TYPE_4__ group_mask; TYPE_3__ group; TYPE_2__ source_mask; TYPE_1__ source; } ;
struct mlxsw_sp_acl_rule_info {int dummy; } ;


 int MLXSW_AFK_ELEMENT_DST_IP_0_31 ;
 int MLXSW_AFK_ELEMENT_SRC_IP_0_31 ;
 int mlxsw_sp_acl_rulei_keymask_buf (struct mlxsw_sp_acl_rule_info*,int ,char*,char*,int) ;

__attribute__((used)) static void
mlxsw_sp2_mr_tcam_rule_parse4(struct mlxsw_sp_acl_rule_info *rulei,
         struct mlxsw_sp_mr_route_key *key)
{
 mlxsw_sp_acl_rulei_keymask_buf(rulei, MLXSW_AFK_ELEMENT_SRC_IP_0_31,
           (char *) &key->source.addr4,
           (char *) &key->source_mask.addr4, 4);
 mlxsw_sp_acl_rulei_keymask_buf(rulei, MLXSW_AFK_ELEMENT_DST_IP_0_31,
           (char *) &key->group.addr4,
           (char *) &key->group_mask.addr4, 4);
}
