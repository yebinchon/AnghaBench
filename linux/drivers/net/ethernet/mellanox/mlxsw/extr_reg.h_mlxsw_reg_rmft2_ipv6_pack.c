
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct in6_addr {int dummy; } ;
typedef enum mlxsw_reg_rmft2_irif_mask { ____Placeholder_mlxsw_reg_rmft2_irif_mask } mlxsw_reg_rmft2_irif_mask ;


 int MLXSW_REG_RMFT2_TYPE_IPV6 ;
 int mlxsw_reg_rmft2_common_pack (char*,int,int ,int ,int,int ,char const*) ;
 int mlxsw_reg_rmft2_dip6_mask_memcpy_to (char*,void*) ;
 int mlxsw_reg_rmft2_dip6_memcpy_to (char*,void*) ;
 int mlxsw_reg_rmft2_sip6_mask_memcpy_to (char*,void*) ;
 int mlxsw_reg_rmft2_sip6_memcpy_to (char*,void*) ;
 int mlxsw_reg_rmft2_type_set (char*,int ) ;

__attribute__((used)) static inline void
mlxsw_reg_rmft2_ipv6_pack(char *payload, bool v, u16 offset, u16 virtual_router,
     enum mlxsw_reg_rmft2_irif_mask irif_mask, u16 irif,
     struct in6_addr dip6, struct in6_addr dip6_mask,
     struct in6_addr sip6, struct in6_addr sip6_mask,
     const char *flexible_action_set)
{
 mlxsw_reg_rmft2_common_pack(payload, v, offset, virtual_router,
        irif_mask, irif, flexible_action_set);
 mlxsw_reg_rmft2_type_set(payload, MLXSW_REG_RMFT2_TYPE_IPV6);
 mlxsw_reg_rmft2_dip6_memcpy_to(payload, (void *)&dip6);
 mlxsw_reg_rmft2_dip6_mask_memcpy_to(payload, (void *)&dip6_mask);
 mlxsw_reg_rmft2_sip6_memcpy_to(payload, (void *)&sip6);
 mlxsw_reg_rmft2_sip6_mask_memcpy_to(payload, (void *)&sip6_mask);
}
