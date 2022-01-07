
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_15__ {int * s6_addr; } ;
struct TYPE_16__ {TYPE_7__ addr6; } ;
struct TYPE_13__ {int * s6_addr; } ;
struct TYPE_14__ {TYPE_5__ addr6; } ;
struct TYPE_11__ {int * s6_addr; } ;
struct TYPE_12__ {TYPE_3__ addr6; } ;
struct TYPE_9__ {int * s6_addr; } ;
struct TYPE_10__ {TYPE_1__ addr6; } ;
struct mlxsw_sp_mr_route_key {TYPE_8__ group_mask; TYPE_6__ group; TYPE_4__ source_mask; TYPE_2__ source; } ;
struct mlxsw_sp_acl_rule_info {int dummy; } ;


 int MLXSW_AFK_ELEMENT_DST_IP_0_31 ;
 int MLXSW_AFK_ELEMENT_DST_IP_32_63 ;
 int MLXSW_AFK_ELEMENT_DST_IP_64_95 ;
 int MLXSW_AFK_ELEMENT_DST_IP_96_127 ;
 int MLXSW_AFK_ELEMENT_SRC_IP_0_31 ;
 int MLXSW_AFK_ELEMENT_SRC_IP_32_63 ;
 int MLXSW_AFK_ELEMENT_SRC_IP_64_95 ;
 int MLXSW_AFK_ELEMENT_SRC_IP_96_127 ;
 int mlxsw_sp_acl_rulei_keymask_buf (struct mlxsw_sp_acl_rule_info*,int ,int *,int *,int) ;

__attribute__((used)) static void
mlxsw_sp2_mr_tcam_rule_parse6(struct mlxsw_sp_acl_rule_info *rulei,
         struct mlxsw_sp_mr_route_key *key)
{
 mlxsw_sp_acl_rulei_keymask_buf(rulei, MLXSW_AFK_ELEMENT_SRC_IP_96_127,
           &key->source.addr6.s6_addr[0x0],
           &key->source_mask.addr6.s6_addr[0x0], 4);
 mlxsw_sp_acl_rulei_keymask_buf(rulei, MLXSW_AFK_ELEMENT_SRC_IP_64_95,
           &key->source.addr6.s6_addr[0x4],
           &key->source_mask.addr6.s6_addr[0x4], 4);
 mlxsw_sp_acl_rulei_keymask_buf(rulei, MLXSW_AFK_ELEMENT_SRC_IP_32_63,
           &key->source.addr6.s6_addr[0x8],
           &key->source_mask.addr6.s6_addr[0x8], 4);
 mlxsw_sp_acl_rulei_keymask_buf(rulei, MLXSW_AFK_ELEMENT_SRC_IP_0_31,
           &key->source.addr6.s6_addr[0xc],
           &key->source_mask.addr6.s6_addr[0xc], 4);
 mlxsw_sp_acl_rulei_keymask_buf(rulei, MLXSW_AFK_ELEMENT_DST_IP_96_127,
           &key->group.addr6.s6_addr[0x0],
           &key->group_mask.addr6.s6_addr[0x0], 4);
 mlxsw_sp_acl_rulei_keymask_buf(rulei, MLXSW_AFK_ELEMENT_DST_IP_64_95,
           &key->group.addr6.s6_addr[0x4],
           &key->group_mask.addr6.s6_addr[0x4], 4);
 mlxsw_sp_acl_rulei_keymask_buf(rulei, MLXSW_AFK_ELEMENT_DST_IP_32_63,
           &key->group.addr6.s6_addr[0x8],
           &key->group_mask.addr6.s6_addr[0x8], 4);
 mlxsw_sp_acl_rulei_keymask_buf(rulei, MLXSW_AFK_ELEMENT_DST_IP_0_31,
           &key->group.addr6.s6_addr[0xc],
           &key->group_mask.addr6.s6_addr[0xc], 4);
}
