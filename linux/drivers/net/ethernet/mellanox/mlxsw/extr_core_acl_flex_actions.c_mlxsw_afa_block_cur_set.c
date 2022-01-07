
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlxsw_afa_block {TYPE_2__* cur_set; } ;
struct TYPE_3__ {char* enc_actions; } ;
struct TYPE_4__ {TYPE_1__ ht_key; } ;



char *mlxsw_afa_block_cur_set(struct mlxsw_afa_block *block)
{
 return block->cur_set->ht_key.enc_actions;
}
