
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int __mlxsw_sp2_afk_block_value_set (char*,int,int ) ;
 int mlxsw_sp2_afk_block_value_get (char*) ;

__attribute__((used)) static void mlxsw_sp2_afk_encode_block(char *output, int block_index,
           char *block)
{
 u64 block_value = mlxsw_sp2_afk_block_value_get(block);

 __mlxsw_sp2_afk_block_value_set(output, block_index, block_value);
}
