
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_tneem_overlay_ecn_set (char*,int ) ;
 int mlxsw_reg_tneem_underlay_ecn_set (char*,int ) ;
 int tneem ;

__attribute__((used)) static inline void mlxsw_reg_tneem_pack(char *payload, u8 overlay_ecn,
     u8 underlay_ecn)
{
 MLXSW_REG_ZERO(tneem, payload);
 mlxsw_reg_tneem_overlay_ecn_set(payload, overlay_ecn);
 mlxsw_reg_tneem_underlay_ecn_set(payload, underlay_ecn);
}
