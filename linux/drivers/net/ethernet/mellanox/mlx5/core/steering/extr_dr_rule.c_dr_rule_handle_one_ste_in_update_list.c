
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5dr_ste_send_info {int data; TYPE_1__* ste; int offset; int size; int send_list; } ;
struct mlx5dr_domain {int dummy; } ;
struct TYPE_2__ {int hw_ste; } ;


 int DR_STE_SIZE_REDUCED ;
 int kfree (struct mlx5dr_ste_send_info*) ;
 int list_del (int *) ;
 int memcpy (int ,int ,int ) ;
 int mlx5dr_send_postsend_ste (struct mlx5dr_domain*,TYPE_1__*,int ,int ,int ) ;

__attribute__((used)) static int
dr_rule_handle_one_ste_in_update_list(struct mlx5dr_ste_send_info *ste_info,
          struct mlx5dr_domain *dmn)
{
 int ret;

 list_del(&ste_info->send_list);
 ret = mlx5dr_send_postsend_ste(dmn, ste_info->ste, ste_info->data,
           ste_info->size, ste_info->offset);
 if (ret)
  goto out;



 memcpy(ste_info->ste->hw_ste, ste_info->data, DR_STE_SIZE_REDUCED);

out:
 kfree(ste_info);
 return ret;
}
