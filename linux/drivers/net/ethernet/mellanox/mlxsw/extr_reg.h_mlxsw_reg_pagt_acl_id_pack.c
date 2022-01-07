
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int mlxsw_reg_pagt_acl_id_set (char*,int,int ) ;
 int mlxsw_reg_pagt_multi_set (char*,int,int) ;
 int mlxsw_reg_pagt_size_get (char*) ;
 int mlxsw_reg_pagt_size_set (char*,int) ;

__attribute__((used)) static inline void mlxsw_reg_pagt_acl_id_pack(char *payload, int index,
           u16 acl_id, bool multi)
{
 u8 size = mlxsw_reg_pagt_size_get(payload);

 if (index >= size)
  mlxsw_reg_pagt_size_set(payload, index + 1);
 mlxsw_reg_pagt_multi_set(payload, index, multi);
 mlxsw_reg_pagt_acl_id_set(payload, index, acl_id);
}
