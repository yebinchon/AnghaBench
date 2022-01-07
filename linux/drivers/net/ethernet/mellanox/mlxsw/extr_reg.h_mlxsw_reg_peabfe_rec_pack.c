
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int mlxsw_reg_peabfe_bf_entry_bank_set (char*,int,int) ;
 int mlxsw_reg_peabfe_bf_entry_index_set (char*,int,int ) ;
 int mlxsw_reg_peabfe_bf_entry_state_set (char*,int,int) ;
 int mlxsw_reg_peabfe_size_get (char*) ;
 int mlxsw_reg_peabfe_size_set (char*,int) ;

__attribute__((used)) static inline void mlxsw_reg_peabfe_rec_pack(char *payload, int rec_index,
          u8 state, u8 bank, u32 bf_index)
{
 u8 num_rec = mlxsw_reg_peabfe_size_get(payload);

 if (rec_index >= num_rec)
  mlxsw_reg_peabfe_size_set(payload, rec_index + 1);
 mlxsw_reg_peabfe_bf_entry_state_set(payload, rec_index, state);
 mlxsw_reg_peabfe_bf_entry_bank_set(payload, rec_index, bank);
 mlxsw_reg_peabfe_bf_entry_index_set(payload, rec_index, bf_index);
}
