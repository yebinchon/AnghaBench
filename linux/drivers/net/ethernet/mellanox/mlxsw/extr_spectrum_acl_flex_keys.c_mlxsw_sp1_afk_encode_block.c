
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MLXSW_SP1_AFK_KEY_BLOCK_SIZE ;
 int memcpy (char*,char*,int) ;

__attribute__((used)) static void mlxsw_sp1_afk_encode_block(char *output, int block_index,
           char *block)
{
 unsigned int offset = block_index * MLXSW_SP1_AFK_KEY_BLOCK_SIZE;
 char *output_indexed = output + offset;

 memcpy(output_indexed, block, MLXSW_SP1_AFK_KEY_BLOCK_SIZE);
}
