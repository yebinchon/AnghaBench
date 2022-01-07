
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_item {int dummy; } ;
struct mlxsw_afk_element_inst {scalar_t__ type; struct mlxsw_item item; TYPE_1__* info; } ;
struct TYPE_2__ {struct mlxsw_item item; } ;


 scalar_t__ MLXSW_AFK_ELEMENT_TYPE_BUF ;
 scalar_t__ MLXSW_AFK_ELEMENT_TYPE_U32 ;
 int mlxsw_sp_afk_encode_buf (struct mlxsw_item const*,struct mlxsw_item const*,char*,char*) ;
 int mlxsw_sp_afk_encode_u32 (struct mlxsw_item const*,struct mlxsw_item const*,char*,char*,int) ;

__attribute__((used)) static void
mlxsw_sp_afk_encode_one(const struct mlxsw_afk_element_inst *elinst,
   char *output, char *storage, int u32_diff)
{
 const struct mlxsw_item *storage_item = &elinst->info->item;
 const struct mlxsw_item *output_item = &elinst->item;

 if (elinst->type == MLXSW_AFK_ELEMENT_TYPE_U32)
  mlxsw_sp_afk_encode_u32(storage_item, output_item,
     storage, output, u32_diff);
 else if (elinst->type == MLXSW_AFK_ELEMENT_TYPE_BUF)
  mlxsw_sp_afk_encode_buf(storage_item, output_item,
     storage, output);
}
