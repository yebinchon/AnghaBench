
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_spvid_local_port_set (char*,int ) ;
 int mlxsw_reg_spvid_pvid_set (char*,int ) ;
 int spvid ;

__attribute__((used)) static inline void mlxsw_reg_spvid_pack(char *payload, u8 local_port, u16 pvid)
{
 MLXSW_REG_ZERO(spvid, payload);
 mlxsw_reg_spvid_local_port_set(payload, local_port);
 mlxsw_reg_spvid_pvid_set(payload, pvid);
}
