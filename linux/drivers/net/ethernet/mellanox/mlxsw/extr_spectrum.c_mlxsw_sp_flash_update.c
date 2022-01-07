
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netlink_ext_ack {int dummy; } ;
struct mlxsw_sp {TYPE_1__* bus_info; } ;
struct mlxsw_core {int dummy; } ;
struct firmware {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int EOPNOTSUPP ;
 struct mlxsw_sp* mlxsw_core_driver_priv (struct mlxsw_core*) ;
 int mlxsw_sp_firmware_flash (struct mlxsw_sp*,struct firmware const*,struct netlink_ext_ack*) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware_direct (struct firmware const**,char const*,int ) ;

__attribute__((used)) static int mlxsw_sp_flash_update(struct mlxsw_core *mlxsw_core,
     const char *file_name, const char *component,
     struct netlink_ext_ack *extack)
{
 struct mlxsw_sp *mlxsw_sp = mlxsw_core_driver_priv(mlxsw_core);
 const struct firmware *firmware;
 int err;

 if (component)
  return -EOPNOTSUPP;

 err = request_firmware_direct(&firmware, file_name,
          mlxsw_sp->bus_info->dev);
 if (err)
  return err;
 err = mlxsw_sp_firmware_flash(mlxsw_sp, firmware, extack);
 release_firmware(firmware);

 return err;
}
