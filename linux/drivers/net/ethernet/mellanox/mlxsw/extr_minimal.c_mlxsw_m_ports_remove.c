
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_m {int max_ports; scalar_t__* module_to_port; scalar_t__* ports; } ;


 int kfree (scalar_t__*) ;
 int mlxsw_m_port_module_unmap (struct mlxsw_m*,int) ;
 int mlxsw_m_port_remove (struct mlxsw_m*,scalar_t__) ;

__attribute__((used)) static void mlxsw_m_ports_remove(struct mlxsw_m *mlxsw_m)
{
 int i;

 for (i = 0; i < mlxsw_m->max_ports; i++) {
  if (mlxsw_m->module_to_port[i] > 0) {
   mlxsw_m_port_remove(mlxsw_m,
         mlxsw_m->module_to_port[i]);
   mlxsw_m_port_module_unmap(mlxsw_m, i);
  }
 }

 kfree(mlxsw_m->module_to_port);
 kfree(mlxsw_m->ports);
}
