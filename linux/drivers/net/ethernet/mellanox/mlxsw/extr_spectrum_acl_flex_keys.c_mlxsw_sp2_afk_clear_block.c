
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __mlxsw_sp2_afk_block_value_set (char*,int,int ) ;

__attribute__((used)) static void mlxsw_sp2_afk_clear_block(char *output, int block_index)
{
 __mlxsw_sp2_afk_block_value_set(output, block_index, 0);
}
