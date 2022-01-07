
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct mlxsw_m {int* module_to_port; } ;



__attribute__((used)) static void mlxsw_m_port_module_unmap(struct mlxsw_m *mlxsw_m, u8 module)
{
 mlxsw_m->module_to_port[module] = -1;
}
