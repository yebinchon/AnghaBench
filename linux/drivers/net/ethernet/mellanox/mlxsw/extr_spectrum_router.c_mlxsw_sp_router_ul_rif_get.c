
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct mlxsw_sp_rif {int rif_index; } ;
struct mlxsw_sp {int dummy; } ;


 int ASSERT_RTNL () ;
 scalar_t__ IS_ERR (struct mlxsw_sp_rif*) ;
 int PTR_ERR (struct mlxsw_sp_rif*) ;
 struct mlxsw_sp_rif* mlxsw_sp_ul_rif_get (struct mlxsw_sp*,int ,int *) ;

int mlxsw_sp_router_ul_rif_get(struct mlxsw_sp *mlxsw_sp, u32 ul_tb_id,
          u16 *ul_rif_index)
{
 struct mlxsw_sp_rif *ul_rif;

 ASSERT_RTNL();

 ul_rif = mlxsw_sp_ul_rif_get(mlxsw_sp, ul_tb_id, ((void*)0));
 if (IS_ERR(ul_rif))
  return PTR_ERR(ul_rif);
 *ul_rif_index = ul_rif->rif_index;

 return 0;
}
