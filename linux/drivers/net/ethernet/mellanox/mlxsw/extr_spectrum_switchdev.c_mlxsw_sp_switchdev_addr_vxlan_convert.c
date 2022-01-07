
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int sin6_addr; } ;
struct TYPE_7__ {int sa_family; } ;
struct TYPE_5__ {int s_addr; } ;
struct TYPE_6__ {TYPE_1__ sin_addr; } ;
union vxlan_addr {TYPE_4__ sin6; TYPE_3__ sa; TYPE_2__ sin; } ;
union mlxsw_sp_l3addr {int addr6; int addr4; } ;
typedef enum mlxsw_sp_l3proto { ____Placeholder_mlxsw_sp_l3proto } mlxsw_sp_l3proto ;


 int AF_INET ;
 int AF_INET6 ;



__attribute__((used)) static void
mlxsw_sp_switchdev_addr_vxlan_convert(enum mlxsw_sp_l3proto proto,
          const union mlxsw_sp_l3addr *addr,
          union vxlan_addr *vxlan_addr)
{
 switch (proto) {
 case 129:
  vxlan_addr->sa.sa_family = AF_INET;
  vxlan_addr->sin.sin_addr.s_addr = addr->addr4;
  break;
 case 128:
  vxlan_addr->sa.sa_family = AF_INET6;
  vxlan_addr->sin6.sin6_addr = addr->addr6;
  break;
 }
}
