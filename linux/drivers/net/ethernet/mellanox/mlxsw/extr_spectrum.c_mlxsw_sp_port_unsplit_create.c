
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct mlxsw_sp {scalar_t__* port_to_module; } ;


 size_t MLXSW_PORT_MODULE_MAX_WIDTH ;
 int mlxsw_sp_port_create (struct mlxsw_sp*,size_t,int,size_t,size_t,int ) ;

__attribute__((used)) static void mlxsw_sp_port_unsplit_create(struct mlxsw_sp *mlxsw_sp,
      u8 base_port, unsigned int count)
{
 u8 local_port, module, width = MLXSW_PORT_MODULE_MAX_WIDTH;
 int i;




 count = count / 2;

 for (i = 0; i < count; i++) {
  local_port = base_port + i * 2;
  if (mlxsw_sp->port_to_module[local_port] < 0)
   continue;
  module = mlxsw_sp->port_to_module[local_port];

  mlxsw_sp_port_create(mlxsw_sp, local_port, 0, module,
         width, 0);
 }
}
