
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_svpe_local_port_set (char*,int ) ;
 int mlxsw_reg_svpe_vp_en_set (char*,int) ;
 int svpe ;

__attribute__((used)) static inline void mlxsw_reg_svpe_pack(char *payload, u8 local_port,
           bool enable)
{
 MLXSW_REG_ZERO(svpe, payload);
 mlxsw_reg_svpe_local_port_set(payload, local_port);
 mlxsw_reg_svpe_vp_en_set(payload, enable);
}
