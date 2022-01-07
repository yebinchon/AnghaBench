
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int MLXSW_REG_PPLR_LB_TYPE_BIT_PHY_LOCAL ;
 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_pplr_lb_en_set (char*,int ) ;
 int mlxsw_reg_pplr_local_port_set (char*,int ) ;
 int pplr ;

__attribute__((used)) static inline void mlxsw_reg_pplr_pack(char *payload, u8 local_port,
           bool phy_local)
{
 MLXSW_REG_ZERO(pplr, payload);
 mlxsw_reg_pplr_local_port_set(payload, local_port);
 mlxsw_reg_pplr_lb_en_set(payload,
     phy_local ?
     MLXSW_REG_PPLR_LB_TYPE_BIT_PHY_LOCAL : 0);
}
