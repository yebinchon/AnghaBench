
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp {int dummy; } ;


 int mlxsw_sp_flow_counter_free (struct mlxsw_sp*,unsigned int) ;

__attribute__((used)) static void
mlxsw_sp_act_counter_index_put(void *priv, unsigned int counter_index)
{
 struct mlxsw_sp *mlxsw_sp = priv;

 mlxsw_sp_flow_counter_free(mlxsw_sp, counter_index);
}
