
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct mlxsw_sib {int ** ports; } ;



__attribute__((used)) static bool mlxsw_sib_port_created(struct mlxsw_sib *mlxsw_sib, u8 local_port)
{
 return mlxsw_sib->ports[local_port] != ((void*)0);
}
