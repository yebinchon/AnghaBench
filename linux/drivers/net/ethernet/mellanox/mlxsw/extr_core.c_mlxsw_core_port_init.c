
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mlxsw_core {int dummy; } ;


 int DEVLINK_PORT_FLAVOUR_PHYSICAL ;
 int __mlxsw_core_port_init (struct mlxsw_core*,int ,int ,int ,int,int ,unsigned char const*,unsigned char) ;

int mlxsw_core_port_init(struct mlxsw_core *mlxsw_core, u8 local_port,
    u32 port_number, bool split,
    u32 split_port_subnumber,
    const unsigned char *switch_id,
    unsigned char switch_id_len)
{
 return __mlxsw_core_port_init(mlxsw_core, local_port,
          DEVLINK_PORT_FLAVOUR_PHYSICAL,
          port_number, split, split_port_subnumber,
          switch_id, switch_id_len);
}
