
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int mlxsw_reg_ptar_flexible_key_id_set (char*,int,int ) ;

__attribute__((used)) static inline void mlxsw_reg_ptar_key_id_pack(char *payload, int index,
           u16 key_id)
{
 mlxsw_reg_ptar_flexible_key_id_set(payload, index, key_id);
}
