
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_smid_mid_set (char*,int ) ;
 int mlxsw_reg_smid_port_mask_set (char*,int ,int) ;
 int mlxsw_reg_smid_port_set (char*,int ,int) ;
 int mlxsw_reg_smid_swid_set (char*,int ) ;
 int smid ;

__attribute__((used)) static inline void mlxsw_reg_smid_pack(char *payload, u16 mid,
           u8 port, bool set)
{
 MLXSW_REG_ZERO(smid, payload);
 mlxsw_reg_smid_swid_set(payload, 0);
 mlxsw_reg_smid_mid_set(payload, mid);
 mlxsw_reg_smid_port_set(payload, port, set);
 mlxsw_reg_smid_port_mask_set(payload, port, 1);
}
