
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlxsw_sp {int dummy; } ;


 unsigned int MLXSW_PORT_MODULE_MAX_WIDTH ;
 int mlxsw_sp_port_create (struct mlxsw_sp*,int,int,int,int,int) ;
 scalar_t__ mlxsw_sp_port_created (struct mlxsw_sp*,int) ;
 int mlxsw_sp_port_remove (struct mlxsw_sp*,int) ;

__attribute__((used)) static int mlxsw_sp_port_split_create(struct mlxsw_sp *mlxsw_sp, u8 base_port,
          u8 module, unsigned int count, u8 offset)
{
 u8 width = MLXSW_PORT_MODULE_MAX_WIDTH / count;
 int err, i;

 for (i = 0; i < count; i++) {
  err = mlxsw_sp_port_create(mlxsw_sp, base_port + i * offset,
        1, module, width, i * width);
  if (err)
   goto err_port_create;
 }

 return 0;

err_port_create:
 for (i--; i >= 0; i--)
  if (mlxsw_sp_port_created(mlxsw_sp, base_port + i * offset))
   mlxsw_sp_port_remove(mlxsw_sp, base_port + i * offset);
 return err;
}
