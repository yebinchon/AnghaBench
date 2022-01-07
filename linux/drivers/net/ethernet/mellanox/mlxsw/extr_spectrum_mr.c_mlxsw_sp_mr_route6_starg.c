
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlxsw_sp_mr_table {int dummy; } ;
struct TYPE_3__ {int addr6; } ;
struct TYPE_4__ {TYPE_1__ source_mask; } ;
struct mlxsw_sp_mr_route {TYPE_2__ key; } ;


 int ipv6_addr_any (int *) ;

__attribute__((used)) static bool mlxsw_sp_mr_route6_starg(const struct mlxsw_sp_mr_table *mr_table,
         const struct mlxsw_sp_mr_route *mr_route)
{
 return ipv6_addr_any(&mr_route->key.source_mask.addr6);
}
