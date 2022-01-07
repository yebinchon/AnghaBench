
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct mlxsw_m {scalar_t__ max_ports; scalar_t__* module_to_port; } ;


 int mlxsw_m_port_module_info_get (struct mlxsw_m*,size_t,size_t*,size_t*) ;

__attribute__((used)) static int mlxsw_m_port_module_map(struct mlxsw_m *mlxsw_m, u8 local_port,
       u8 *last_module)
{
 u8 module, width;
 int err;


 err = mlxsw_m_port_module_info_get(mlxsw_m, local_port, &module,
        &width);
 if (err)
  return err;

 if (!width)
  return 0;

 if (module == *last_module)
  return 0;
 *last_module = module;
 mlxsw_m->module_to_port[module] = ++mlxsw_m->max_ports;

 return 0;
}
