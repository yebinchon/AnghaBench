
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct parman_item {int index; } ;
struct TYPE_8__ {int addr6; int addr4; } ;
struct TYPE_7__ {int addr6; int addr4; } ;
struct TYPE_6__ {int addr6; int addr4; } ;
struct TYPE_5__ {int addr6; int addr4; } ;
struct mlxsw_sp_mr_route_key {int proto; TYPE_4__ source_mask; TYPE_3__ source; TYPE_2__ group_mask; TYPE_1__ group; int vrid; } ;
struct mlxsw_sp {int core; } ;
struct mlxsw_afa_block {int dummy; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_RMFT2_IRIF_MASK_IGNORE ;
 int MLXSW_REG_RMFT2_LEN ;


 int mlxsw_afa_block_first_set (struct mlxsw_afa_block*) ;
 int mlxsw_reg_rmft2_ipv4_pack (char*,int,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int mlxsw_reg_rmft2_ipv6_pack (char*,int,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int ntohl (int ) ;
 int rmft2 ;

__attribute__((used)) static int mlxsw_sp1_mr_tcam_route_replace(struct mlxsw_sp *mlxsw_sp,
        struct parman_item *parman_item,
        struct mlxsw_sp_mr_route_key *key,
        struct mlxsw_afa_block *afa_block)
{
 char rmft2_pl[MLXSW_REG_RMFT2_LEN];

 switch (key->proto) {
 case 129:
  mlxsw_reg_rmft2_ipv4_pack(rmft2_pl, 1, parman_item->index,
       key->vrid,
       MLXSW_REG_RMFT2_IRIF_MASK_IGNORE, 0,
       ntohl(key->group.addr4),
       ntohl(key->group_mask.addr4),
       ntohl(key->source.addr4),
       ntohl(key->source_mask.addr4),
       mlxsw_afa_block_first_set(afa_block));
  break;
 case 128:
  mlxsw_reg_rmft2_ipv6_pack(rmft2_pl, 1, parman_item->index,
       key->vrid,
       MLXSW_REG_RMFT2_IRIF_MASK_IGNORE, 0,
       key->group.addr6,
       key->group_mask.addr6,
       key->source.addr6,
       key->source_mask.addr6,
       mlxsw_afa_block_first_set(afa_block));
 }

 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(rmft2), rmft2_pl);
}
