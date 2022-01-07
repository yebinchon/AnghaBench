
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mlxsw_sp {int dummy; } ;


 int MLXSW_SP_PORT_BASE_SPEED_25G ;

__attribute__((used)) static int
mlxsw_sp1_port_speed_base(struct mlxsw_sp *mlxsw_sp, u8 local_port,
     u32 *base_speed)
{
 *base_speed = MLXSW_SP_PORT_BASE_SPEED_25G;
 return 0;
}
