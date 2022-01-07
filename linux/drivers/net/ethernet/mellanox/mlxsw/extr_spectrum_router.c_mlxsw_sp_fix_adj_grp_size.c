
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlxsw_sp {int dummy; } ;


 int MLXSW_SP_KVDL_ENTRY_TYPE_ADJ ;
 int mlxsw_sp_adj_grp_size_round_down (int *,unsigned int) ;
 int mlxsw_sp_adj_grp_size_round_up (int *) ;
 int mlxsw_sp_kvdl_alloc_count_query (struct mlxsw_sp*,int ,int ,unsigned int*) ;

__attribute__((used)) static int mlxsw_sp_fix_adj_grp_size(struct mlxsw_sp *mlxsw_sp,
         u16 *p_adj_grp_size)
{
 unsigned int alloc_size;
 int err;




 mlxsw_sp_adj_grp_size_round_up(p_adj_grp_size);
 err = mlxsw_sp_kvdl_alloc_count_query(mlxsw_sp,
           MLXSW_SP_KVDL_ENTRY_TYPE_ADJ,
           *p_adj_grp_size, &alloc_size);
 if (err)
  return err;




 mlxsw_sp_adj_grp_size_round_down(p_adj_grp_size, alloc_size);

 return 0;
}
