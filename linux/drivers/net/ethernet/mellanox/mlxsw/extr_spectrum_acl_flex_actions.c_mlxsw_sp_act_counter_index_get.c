
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp {int dummy; } ;


 int mlxsw_sp_flow_counter_alloc (struct mlxsw_sp*,unsigned int*) ;

__attribute__((used)) static int
mlxsw_sp_act_counter_index_get(void *priv, unsigned int *p_counter_index)
{
 struct mlxsw_sp *mlxsw_sp = priv;

 return mlxsw_sp_flow_counter_alloc(mlxsw_sp, p_counter_index);
}
