
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_pefa_ca_set (char*,int) ;
 int mlxsw_reg_pefa_flex_action_set_memcpy_to (char*,char const*) ;
 int mlxsw_reg_pefa_index_set (char*,int ) ;
 int pefa ;

__attribute__((used)) static inline void mlxsw_reg_pefa_pack(char *payload, u32 index, bool ca,
           const char *flex_action_set)
{
 MLXSW_REG_ZERO(pefa, payload);
 mlxsw_reg_pefa_index_set(payload, index);
 mlxsw_reg_pefa_ca_set(payload, ca);
 if (flex_action_set)
  mlxsw_reg_pefa_flex_action_set_memcpy_to(payload,
        flex_action_set);
}
