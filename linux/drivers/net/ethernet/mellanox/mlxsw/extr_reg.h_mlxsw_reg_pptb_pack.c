
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int MLXSW_REG_PPTB_ALL_PRIO ;
 int MLXSW_REG_PPTB_MM_UM ;
 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_pptb_local_port_set (char*,int ) ;
 int mlxsw_reg_pptb_mm_set (char*,int ) ;
 int mlxsw_reg_pptb_pm_msb_set (char*,int ) ;
 int mlxsw_reg_pptb_pm_set (char*,int ) ;
 int pptb ;

__attribute__((used)) static inline void mlxsw_reg_pptb_pack(char *payload, u8 local_port)
{
 MLXSW_REG_ZERO(pptb, payload);
 mlxsw_reg_pptb_mm_set(payload, MLXSW_REG_PPTB_MM_UM);
 mlxsw_reg_pptb_local_port_set(payload, local_port);
 mlxsw_reg_pptb_pm_set(payload, MLXSW_REG_PPTB_ALL_PRIO);
 mlxsw_reg_pptb_pm_msb_set(payload, MLXSW_REG_PPTB_ALL_PRIO);
}
