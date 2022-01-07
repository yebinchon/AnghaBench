
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_tndem_eip_ecn_set (char*,int ) ;
 int mlxsw_reg_tndem_overlay_ecn_set (char*,int ) ;
 int mlxsw_reg_tndem_trap_en_set (char*,int) ;
 int mlxsw_reg_tndem_trap_id_set (char*,int ) ;
 int mlxsw_reg_tndem_underlay_ecn_set (char*,int ) ;
 int tndem ;

__attribute__((used)) static inline void mlxsw_reg_tndem_pack(char *payload, u8 underlay_ecn,
     u8 overlay_ecn, u8 ecn, bool trap_en,
     u16 trap_id)
{
 MLXSW_REG_ZERO(tndem, payload);
 mlxsw_reg_tndem_underlay_ecn_set(payload, underlay_ecn);
 mlxsw_reg_tndem_overlay_ecn_set(payload, overlay_ecn);
 mlxsw_reg_tndem_eip_ecn_set(payload, ecn);
 mlxsw_reg_tndem_trap_en_set(payload, trap_en);
 mlxsw_reg_tndem_trap_id_set(payload, trap_id);
}
