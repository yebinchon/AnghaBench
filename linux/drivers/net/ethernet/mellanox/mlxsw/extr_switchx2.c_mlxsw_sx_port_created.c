
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct mlxsw_sx {int ** ports; } ;



__attribute__((used)) static bool mlxsw_sx_port_created(struct mlxsw_sx *mlxsw_sx, u8 local_port)
{
 return mlxsw_sx->ports[local_port] != ((void*)0);
}
