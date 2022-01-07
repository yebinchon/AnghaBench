
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;


 int mlxsw_reg_iedr_num_rec_get (char*) ;
 int mlxsw_reg_iedr_num_rec_set (char*,int) ;
 int mlxsw_reg_iedr_rec_index_start_set (char*,int,int ) ;
 int mlxsw_reg_iedr_rec_size_set (char*,int,int ) ;
 int mlxsw_reg_iedr_rec_type_set (char*,int,int) ;

__attribute__((used)) static inline void mlxsw_reg_iedr_rec_pack(char *payload, int rec_index,
        u8 rec_type, u16 rec_size,
        u32 rec_index_start)
{
 u8 num_rec = mlxsw_reg_iedr_num_rec_get(payload);

 if (rec_index >= num_rec)
  mlxsw_reg_iedr_num_rec_set(payload, rec_index + 1);
 mlxsw_reg_iedr_rec_type_set(payload, rec_index, rec_type);
 mlxsw_reg_iedr_rec_size_set(payload, rec_index, rec_size);
 mlxsw_reg_iedr_rec_index_start_set(payload, rec_index, rec_index_start);
}
