
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parman_item {int index; } ;
struct mlxsw_sp_mr_route_key {int proto; int vrid; } ;
struct mlxsw_sp {int core; } ;
struct in6_addr {int dummy; } ;


 struct in6_addr IN6ADDR_ANY_INIT ;
 int MLXSW_REG (int ) ;
 int MLXSW_REG_RMFT2_LEN ;


 int mlxsw_reg_rmft2_ipv4_pack (char*,int,int ,int ,int ,int ,int ,int ,int ,int ,int *) ;
 int mlxsw_reg_rmft2_ipv6_pack (char*,int,int ,int ,int ,int ,struct in6_addr,struct in6_addr,struct in6_addr,struct in6_addr,int *) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int rmft2 ;

__attribute__((used)) static int mlxsw_sp1_mr_tcam_route_remove(struct mlxsw_sp *mlxsw_sp,
       struct parman_item *parman_item,
       struct mlxsw_sp_mr_route_key *key)
{
 struct in6_addr zero_addr = IN6ADDR_ANY_INIT;
 char rmft2_pl[MLXSW_REG_RMFT2_LEN];

 switch (key->proto) {
 case 129:
  mlxsw_reg_rmft2_ipv4_pack(rmft2_pl, 0, parman_item->index,
       key->vrid, 0, 0, 0, 0, 0, 0, ((void*)0));
  break;
 case 128:
  mlxsw_reg_rmft2_ipv6_pack(rmft2_pl, 0, parman_item->index,
       key->vrid, 0, 0, zero_addr, zero_addr,
       zero_addr, zero_addr, ((void*)0));
  break;
 }

 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(rmft2), rmft2_pl);
}
