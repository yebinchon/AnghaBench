
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_pagt_acl_group_id_set (char*,int ) ;
 int pagt ;

__attribute__((used)) static inline void mlxsw_reg_pagt_pack(char *payload, u16 acl_group_id)
{
 MLXSW_REG_ZERO(pagt, payload);
 mlxsw_reg_pagt_acl_group_id_set(payload, acl_group_id);
}
