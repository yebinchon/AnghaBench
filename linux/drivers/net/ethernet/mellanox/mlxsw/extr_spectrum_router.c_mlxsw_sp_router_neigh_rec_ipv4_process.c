
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlxsw_sp {int dummy; } ;


 int MLXSW_REG_RAUHTD_IPV4_ENT_PER_REC ;
 int mlxsw_reg_rauhtd_ipv4_rec_num_entries_get (char*,int) ;
 int mlxsw_sp_router_neigh_ent_ipv4_process (struct mlxsw_sp*,char*,int) ;

__attribute__((used)) static void mlxsw_sp_router_neigh_rec_ipv4_process(struct mlxsw_sp *mlxsw_sp,
         char *rauhtd_pl,
         int rec_index)
{
 u8 num_entries;
 int i;

 num_entries = mlxsw_reg_rauhtd_ipv4_rec_num_entries_get(rauhtd_pl,
        rec_index);

 num_entries++;


 for (i = 0; i < num_entries; i++) {
  int ent_index;

  ent_index = rec_index * MLXSW_REG_RAUHTD_IPV4_ENT_PER_REC + i;
  mlxsw_sp_router_neigh_ent_ipv4_process(mlxsw_sp, rauhtd_pl,
             ent_index);
 }

}
