
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mcda ;
 int mlxsw_reg_mcda_data_set (char*,int,int ) ;
 int mlxsw_reg_mcda_offset_set (char*,int ) ;
 int mlxsw_reg_mcda_size_set (char*,int) ;
 int mlxsw_reg_mcda_update_handle_set (char*,int ) ;

__attribute__((used)) static inline void mlxsw_reg_mcda_pack(char *payload, u32 update_handle,
           u32 offset, u16 size, u8 *data)
{
 int i;

 MLXSW_REG_ZERO(mcda, payload);
 mlxsw_reg_mcda_update_handle_set(payload, update_handle);
 mlxsw_reg_mcda_offset_set(payload, offset);
 mlxsw_reg_mcda_size_set(payload, size);

 for (i = 0; i < size / 4; i++)
  mlxsw_reg_mcda_data_set(payload, i, *(u32 *) &data[i * 4]);
}
