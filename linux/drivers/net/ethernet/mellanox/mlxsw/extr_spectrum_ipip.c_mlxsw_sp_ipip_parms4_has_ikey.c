
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_tunnel_parm {int i_flags; } ;


 int TUNNEL_KEY ;

__attribute__((used)) static bool mlxsw_sp_ipip_parms4_has_ikey(struct ip_tunnel_parm parms)
{
 return !!(parms.i_flags & TUNNEL_KEY);
}
