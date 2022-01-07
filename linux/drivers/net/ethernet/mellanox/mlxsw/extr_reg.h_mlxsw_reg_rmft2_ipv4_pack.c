
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
typedef enum mlxsw_reg_rmft2_irif_mask { ____Placeholder_mlxsw_reg_rmft2_irif_mask } mlxsw_reg_rmft2_irif_mask ;


 int MLXSW_REG_RMFT2_TYPE_IPV4 ;
 int mlxsw_reg_rmft2_common_pack (char*,int,int ,int ,int,int ,char const*) ;
 int mlxsw_reg_rmft2_dip4_mask_set (char*,int ) ;
 int mlxsw_reg_rmft2_dip4_set (char*,int ) ;
 int mlxsw_reg_rmft2_sip4_mask_set (char*,int ) ;
 int mlxsw_reg_rmft2_sip4_set (char*,int ) ;
 int mlxsw_reg_rmft2_type_set (char*,int ) ;

__attribute__((used)) static inline void
mlxsw_reg_rmft2_ipv4_pack(char *payload, bool v, u16 offset, u16 virtual_router,
     enum mlxsw_reg_rmft2_irif_mask irif_mask, u16 irif,
     u32 dip4, u32 dip4_mask, u32 sip4, u32 sip4_mask,
     const char *flexible_action_set)
{
 mlxsw_reg_rmft2_common_pack(payload, v, offset, virtual_router,
        irif_mask, irif, flexible_action_set);
 mlxsw_reg_rmft2_type_set(payload, MLXSW_REG_RMFT2_TYPE_IPV4);
 mlxsw_reg_rmft2_dip4_set(payload, dip4);
 mlxsw_reg_rmft2_dip4_mask_set(payload, dip4_mask);
 mlxsw_reg_rmft2_sip4_set(payload, sip4);
 mlxsw_reg_rmft2_sip4_mask_set(payload, sip4_mask);
}
