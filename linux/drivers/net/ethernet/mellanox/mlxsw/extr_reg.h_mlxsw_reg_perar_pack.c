
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_perar_hw_region_set (char*,int ) ;
 int mlxsw_reg_perar_region_id_set (char*,int ) ;
 int perar ;

__attribute__((used)) static inline void mlxsw_reg_perar_pack(char *payload, u16 region_id,
     u16 hw_region)
{
 MLXSW_REG_ZERO(perar, payload);
 mlxsw_reg_perar_region_id_set(payload, region_id);
 mlxsw_reg_perar_hw_region_set(payload, hw_region);
}
