
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int MLXSW_REG_PTYS_PROTO_MASK_ETH ;
 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_ptys_an_disable_admin_set (char*,int) ;
 int mlxsw_reg_ptys_ext_eth_proto_admin_set (char*,int ) ;
 int mlxsw_reg_ptys_local_port_set (char*,int ) ;
 int mlxsw_reg_ptys_proto_mask_set (char*,int ) ;
 int ptys ;

__attribute__((used)) static inline void mlxsw_reg_ptys_ext_eth_pack(char *payload, u8 local_port,
            u32 proto_admin, bool autoneg)
{
 MLXSW_REG_ZERO(ptys, payload);
 mlxsw_reg_ptys_local_port_set(payload, local_port);
 mlxsw_reg_ptys_proto_mask_set(payload, MLXSW_REG_PTYS_PROTO_MASK_ETH);
 mlxsw_reg_ptys_ext_eth_proto_admin_set(payload, proto_admin);
 mlxsw_reg_ptys_an_disable_admin_set(payload, !autoneg);
}
