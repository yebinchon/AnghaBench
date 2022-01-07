
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int mlxsw_reg_ptys_ib_link_width_cap_get (char*) ;
 int mlxsw_reg_ptys_ib_link_width_oper_get (char*) ;
 int mlxsw_reg_ptys_ib_proto_cap_get (char*) ;
 int mlxsw_reg_ptys_ib_proto_oper_get (char*) ;

__attribute__((used)) static inline void mlxsw_reg_ptys_ib_unpack(char *payload, u16 *p_ib_proto_cap,
         u16 *p_ib_link_width_cap,
         u16 *p_ib_proto_oper,
         u16 *p_ib_link_width_oper)
{
 if (p_ib_proto_cap)
  *p_ib_proto_cap = mlxsw_reg_ptys_ib_proto_cap_get(payload);
 if (p_ib_link_width_cap)
  *p_ib_link_width_cap =
   mlxsw_reg_ptys_ib_link_width_cap_get(payload);
 if (p_ib_proto_oper)
  *p_ib_proto_oper = mlxsw_reg_ptys_ib_proto_oper_get(payload);
 if (p_ib_link_width_oper)
  *p_ib_link_width_oper =
   mlxsw_reg_ptys_ib_link_width_oper_get(payload);
}
