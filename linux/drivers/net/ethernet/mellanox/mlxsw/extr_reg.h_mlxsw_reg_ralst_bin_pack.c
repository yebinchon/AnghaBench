
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int mlxsw_reg_ralst_left_child_bin_set (char*,int,int) ;
 int mlxsw_reg_ralst_right_child_bin_set (char*,int,int) ;

__attribute__((used)) static inline void mlxsw_reg_ralst_bin_pack(char *payload, u8 bin_number,
         u8 left_child_bin,
         u8 right_child_bin)
{
 int bin_index = bin_number - 1;

 mlxsw_reg_ralst_left_child_bin_set(payload, bin_index, left_child_bin);
 mlxsw_reg_ralst_right_child_bin_set(payload, bin_index,
         right_child_bin);
}
