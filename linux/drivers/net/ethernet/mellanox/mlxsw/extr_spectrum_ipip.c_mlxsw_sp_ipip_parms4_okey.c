
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ip_tunnel_parm {int o_key; } ;


 int be32_to_cpu (int ) ;
 scalar_t__ mlxsw_sp_ipip_parms4_has_okey (struct ip_tunnel_parm) ;

__attribute__((used)) static u32 mlxsw_sp_ipip_parms4_okey(struct ip_tunnel_parm parms)
{
 return mlxsw_sp_ipip_parms4_has_okey(parms) ?
  be32_to_cpu(parms.o_key) : 0;
}
