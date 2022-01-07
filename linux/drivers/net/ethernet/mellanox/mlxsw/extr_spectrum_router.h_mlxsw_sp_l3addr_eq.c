
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union mlxsw_sp_l3addr {int dummy; } mlxsw_sp_l3addr ;


 int memcmp (union mlxsw_sp_l3addr const*,union mlxsw_sp_l3addr const*,int) ;

__attribute__((used)) static inline bool mlxsw_sp_l3addr_eq(const union mlxsw_sp_l3addr *addr1,
          const union mlxsw_sp_l3addr *addr2)
{
 return !memcmp(addr1, addr2, sizeof(*addr1));
}
