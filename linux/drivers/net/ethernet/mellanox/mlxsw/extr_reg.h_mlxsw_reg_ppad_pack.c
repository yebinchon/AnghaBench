
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_ppad_local_port_set (char*,int ) ;
 int mlxsw_reg_ppad_single_base_mac_set (char*,int) ;
 int ppad ;

__attribute__((used)) static inline void mlxsw_reg_ppad_pack(char *payload, bool single_base_mac,
           u8 local_port)
{
 MLXSW_REG_ZERO(ppad, payload);
 mlxsw_reg_ppad_single_base_mac_set(payload, !!single_base_mac);
 mlxsw_reg_ppad_local_port_set(payload, local_port);
}
