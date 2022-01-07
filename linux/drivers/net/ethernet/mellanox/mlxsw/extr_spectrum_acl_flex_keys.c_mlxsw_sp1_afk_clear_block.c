
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MLXSW_SP1_AFK_KEY_BLOCK_SIZE ;
 int memset (char*,int ,int) ;

__attribute__((used)) static void mlxsw_sp1_afk_clear_block(char *output, int block_index)
{
 unsigned int offset = block_index * MLXSW_SP1_AFK_KEY_BLOCK_SIZE;
 char *output_indexed = output + offset;

 memset(output_indexed, 0, MLXSW_SP1_AFK_KEY_BLOCK_SIZE);
}
