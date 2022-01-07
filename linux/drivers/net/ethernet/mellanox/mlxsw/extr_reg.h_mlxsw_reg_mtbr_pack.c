
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int MLXSW_REG_ZERO (int ,char*) ;
 int mlxsw_reg_mtbr_base_sensor_index_set (char*,int ) ;
 int mlxsw_reg_mtbr_num_rec_set (char*,int ) ;
 int mtbr ;

__attribute__((used)) static inline void mlxsw_reg_mtbr_pack(char *payload, u16 base_sensor_index,
           u8 num_rec)
{
 MLXSW_REG_ZERO(mtbr, payload);
 mlxsw_reg_mtbr_base_sensor_index_set(payload, base_sensor_index);
 mlxsw_reg_mtbr_num_rec_set(payload, num_rec);
}
