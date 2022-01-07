
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mlx5_core_dev {int dummy; } ;
struct mailbox_mod {int saved_action; int saved_outer_esp_spi_value; scalar_t__ saved_esp_id; } ;
struct TYPE_4__ {int action; scalar_t__ esp_id; } ;
struct fs_fte {TYPE_1__ action; int val; } ;
struct TYPE_5__ {int outer_esp_spi; } ;
struct TYPE_6__ {TYPE_2__ ft_field_support; } ;


 char* MLX5_ADDR_OF (int ,int ,int ) ;
 int MLX5_CAP_FLOWTABLE (struct mlx5_core_dev*,int ) ;
 int MLX5_FLOW_CONTEXT_ACTION_DECRYPT ;
 int MLX5_FLOW_CONTEXT_ACTION_ENCRYPT ;
 int MLX5_GET (int ,char*,int ) ;
 int MLX5_SET (int ,char*,int ,int ) ;
 TYPE_3__ flow_table_properties_nic_receive ;
 int fte_match_param ;
 int fte_match_set_misc ;
 int misc_parameters ;
 int outer_esp_spi ;

__attribute__((used)) static void modify_spec_mailbox(struct mlx5_core_dev *mdev,
    struct fs_fte *fte,
    struct mailbox_mod *mbox_mod)
{
 char *misc_params_v = MLX5_ADDR_OF(fte_match_param,
        fte->val,
        misc_parameters);

 mbox_mod->saved_esp_id = fte->action.esp_id;
 mbox_mod->saved_action = fte->action.action &
   (MLX5_FLOW_CONTEXT_ACTION_ENCRYPT |
    MLX5_FLOW_CONTEXT_ACTION_DECRYPT);
 mbox_mod->saved_outer_esp_spi_value =
   MLX5_GET(fte_match_set_misc, misc_params_v,
     outer_esp_spi);

 fte->action.esp_id = 0;
 fte->action.action &= ~(MLX5_FLOW_CONTEXT_ACTION_ENCRYPT |
    MLX5_FLOW_CONTEXT_ACTION_DECRYPT);
 if (!MLX5_CAP_FLOWTABLE(mdev,
    flow_table_properties_nic_receive.ft_field_support.outer_esp_spi))
  MLX5_SET(fte_match_set_misc, misc_params_v, outer_esp_spi, 0);
}
