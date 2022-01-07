
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct neighbour {scalar_t__ primary_key; } ;
struct TYPE_2__ {struct neighbour* n; } ;
struct mlxsw_sp_neigh_entry {int counter_index; scalar_t__ counter_valid; int ha; int rif; TYPE_1__ key; } ;
struct mlxsw_sp {int core; } ;
typedef enum mlxsw_reg_rauht_op { ____Placeholder_mlxsw_reg_rauht_op } mlxsw_reg_rauht_op ;
typedef int __be32 ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_RAUHT_LEN ;
 int mlxsw_reg_rauht_pack4 (char*,int,int ,int ,int ) ;
 int mlxsw_reg_rauht_pack_counter (char*,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int ntohl (int ) ;
 int rauht ;

__attribute__((used)) static int
mlxsw_sp_router_neigh_entry_op4(struct mlxsw_sp *mlxsw_sp,
    struct mlxsw_sp_neigh_entry *neigh_entry,
    enum mlxsw_reg_rauht_op op)
{
 struct neighbour *n = neigh_entry->key.n;
 u32 dip = ntohl(*((__be32 *) n->primary_key));
 char rauht_pl[MLXSW_REG_RAUHT_LEN];

 mlxsw_reg_rauht_pack4(rauht_pl, op, neigh_entry->rif, neigh_entry->ha,
         dip);
 if (neigh_entry->counter_valid)
  mlxsw_reg_rauht_pack_counter(rauht_pl,
          neigh_entry->counter_index);
 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(rauht), rauht_pl);
}
