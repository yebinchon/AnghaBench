
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
struct devlink_port {int dummy; } ;
struct mlxsw_core_port {size_t local_port; struct devlink_port devlink_port; } ;
struct mlxsw_core {struct mlxsw_core_port* ports; } ;
struct devlink {int dummy; } ;
typedef enum devlink_port_flavour { ____Placeholder_devlink_port_flavour } devlink_port_flavour ;


 int devlink_port_attrs_set (struct devlink_port*,int,int ,int,int ,unsigned char const*,unsigned char) ;
 int devlink_port_register (struct devlink*,struct devlink_port*,size_t) ;
 int memset (struct mlxsw_core_port*,int ,int) ;
 struct devlink* priv_to_devlink (struct mlxsw_core*) ;

__attribute__((used)) static int __mlxsw_core_port_init(struct mlxsw_core *mlxsw_core, u8 local_port,
      enum devlink_port_flavour flavour,
      u32 port_number, bool split,
      u32 split_port_subnumber,
      const unsigned char *switch_id,
      unsigned char switch_id_len)
{
 struct devlink *devlink = priv_to_devlink(mlxsw_core);
 struct mlxsw_core_port *mlxsw_core_port =
     &mlxsw_core->ports[local_port];
 struct devlink_port *devlink_port = &mlxsw_core_port->devlink_port;
 int err;

 mlxsw_core_port->local_port = local_port;
 devlink_port_attrs_set(devlink_port, flavour, port_number,
          split, split_port_subnumber,
          switch_id, switch_id_len);
 err = devlink_port_register(devlink, devlink_port, local_port);
 if (err)
  memset(mlxsw_core_port, 0, sizeof(*mlxsw_core_port));
 return err;
}
