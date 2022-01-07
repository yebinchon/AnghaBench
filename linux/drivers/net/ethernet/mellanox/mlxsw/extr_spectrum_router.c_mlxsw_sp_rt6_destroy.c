
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_rt6 {int rt; } ;


 int kfree (struct mlxsw_sp_rt6*) ;
 int mlxsw_sp_rt6_release (int ) ;

__attribute__((used)) static void mlxsw_sp_rt6_destroy(struct mlxsw_sp_rt6 *mlxsw_sp_rt6)
{
 mlxsw_sp_rt6_release(mlxsw_sp_rt6->rt);
 kfree(mlxsw_sp_rt6);
}
