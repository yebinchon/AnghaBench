
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_afk_key_info {int ref_count; int list; } ;
struct mlxsw_afk_element_usage {int dummy; } ;
struct mlxsw_afk {int key_info_list; int max_blocks; } ;


 int ENOMEM ;
 struct mlxsw_afk_key_info* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int blocks ;
 int kfree (struct mlxsw_afk_key_info*) ;
 struct mlxsw_afk_key_info* kzalloc (int ,int ) ;
 int list_add (int *,int *) ;
 int mlxsw_afk_picker (struct mlxsw_afk*,struct mlxsw_afk_key_info*,struct mlxsw_afk_element_usage*) ;
 int struct_size (struct mlxsw_afk_key_info*,int ,int ) ;

__attribute__((used)) static struct mlxsw_afk_key_info *
mlxsw_afk_key_info_create(struct mlxsw_afk *mlxsw_afk,
     struct mlxsw_afk_element_usage *elusage)
{
 struct mlxsw_afk_key_info *key_info;
 int err;

 key_info = kzalloc(struct_size(key_info, blocks, mlxsw_afk->max_blocks),
      GFP_KERNEL);
 if (!key_info)
  return ERR_PTR(-ENOMEM);
 err = mlxsw_afk_picker(mlxsw_afk, key_info, elusage);
 if (err)
  goto err_picker;
 list_add(&key_info->list, &mlxsw_afk->key_info_list);
 key_info->ref_count = 1;
 return key_info;

err_picker:
 kfree(key_info);
 return ERR_PTR(err);
}
