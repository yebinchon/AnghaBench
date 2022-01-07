
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlxsw_sp_nexthop {int counter_index; scalar_t__ counter_valid; struct mlxsw_sp_neigh_entry* neigh_entry; } ;
struct mlxsw_sp_neigh_entry {int ha; int rif; } ;
struct mlxsw_sp {int core; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_RATR_LEN ;
 int MLXSW_REG_RATR_OP_WRITE_WRITE_ENTRY ;
 int MLXSW_REG_RATR_TYPE_ETHERNET ;
 int mlxsw_reg_ratr_counter_pack (char*,int ,int) ;
 int mlxsw_reg_ratr_eth_entry_pack (char*,int ) ;
 int mlxsw_reg_ratr_pack (char*,int ,int,int ,int ,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int ratr ;

__attribute__((used)) static int __mlxsw_sp_nexthop_update(struct mlxsw_sp *mlxsw_sp, u32 adj_index,
         struct mlxsw_sp_nexthop *nh)
{
 struct mlxsw_sp_neigh_entry *neigh_entry = nh->neigh_entry;
 char ratr_pl[MLXSW_REG_RATR_LEN];

 mlxsw_reg_ratr_pack(ratr_pl, MLXSW_REG_RATR_OP_WRITE_WRITE_ENTRY,
       1, MLXSW_REG_RATR_TYPE_ETHERNET,
       adj_index, neigh_entry->rif);
 mlxsw_reg_ratr_eth_entry_pack(ratr_pl, neigh_entry->ha);
 if (nh->counter_valid)
  mlxsw_reg_ratr_counter_pack(ratr_pl, nh->counter_index, 1);
 else
  mlxsw_reg_ratr_counter_pack(ratr_pl, 0, 0);

 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(ratr), ratr_pl);
}
