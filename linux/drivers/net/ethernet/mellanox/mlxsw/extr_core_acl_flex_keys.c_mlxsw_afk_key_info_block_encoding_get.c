
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct mlxsw_afk_key_info {TYPE_1__** blocks; } ;
struct TYPE_2__ {int encoding; } ;



u16
mlxsw_afk_key_info_block_encoding_get(const struct mlxsw_afk_key_info *key_info,
          int block_index)
{
 return key_info->blocks[block_index]->encoding;
}
