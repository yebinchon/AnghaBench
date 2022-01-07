
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mailbox_mod {scalar_t__ saved_esp_id; int saved_action; int saved_outer_esp_spi_value; } ;
struct TYPE_2__ {uintptr_t esp_id; int action; } ;
struct fs_fte {TYPE_1__ action; int val; } ;


 char* MLX5_ADDR_OF (int ,int ,int ) ;
 int MLX5_SET (int ,char*,int ,int ) ;
 int fte_match_param ;
 int fte_match_set_misc ;
 int misc_parameters ;
 int outer_esp_spi ;

__attribute__((used)) static void restore_spec_mailbox(struct fs_fte *fte,
     struct mailbox_mod *mbox_mod)
{
 char *misc_params_v = MLX5_ADDR_OF(fte_match_param,
        fte->val,
        misc_parameters);

 MLX5_SET(fte_match_set_misc, misc_params_v, outer_esp_spi,
   mbox_mod->saved_outer_esp_spi_value);
 fte->action.action |= mbox_mod->saved_action;
 fte->action.esp_id = (uintptr_t)mbox_mod->saved_esp_id;
}
