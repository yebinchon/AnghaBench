
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union mlxsw_sp_l3addr {int member_0; } ;
typedef int naddr ;


 int memcmp (union mlxsw_sp_l3addr*,union mlxsw_sp_l3addr*,int) ;

bool mlxsw_sp_l3addr_is_zero(union mlxsw_sp_l3addr addr)
{
 union mlxsw_sp_l3addr naddr = {0};

 return !memcmp(&addr, &naddr, sizeof(naddr));
}
