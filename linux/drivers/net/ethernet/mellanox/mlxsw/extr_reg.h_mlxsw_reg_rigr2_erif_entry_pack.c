
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int mlxsw_reg_rigr2_erif_entry_erif_set (char*,int,int ) ;
 int mlxsw_reg_rigr2_erif_entry_v_set (char*,int,int) ;

__attribute__((used)) static inline void mlxsw_reg_rigr2_erif_entry_pack(char *payload, int index,
         bool v, u16 erif)
{
 mlxsw_reg_rigr2_erif_entry_v_set(payload, index, v);
 mlxsw_reg_rigr2_erif_entry_erif_set(payload, index, erif);
}
