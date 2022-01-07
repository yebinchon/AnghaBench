
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct mlx5dr_domain {int mdev; } ;
struct TYPE_2__ {int count; int * headers; } ;
struct dr_action_apply_attr {int ctr_id; int reformat_size; int reformat_id; int gvmi; TYPE_1__ vlans; int modify_index; int modify_actions; } ;


 size_t DR_ACTION_TYP_CTR ;
 size_t DR_ACTION_TYP_L2_TO_TNL_L2 ;
 size_t DR_ACTION_TYP_L2_TO_TNL_L3 ;
 size_t DR_ACTION_TYP_MODIFY_HDR ;
 size_t DR_ACTION_TYP_PUSH_VLAN ;
 int MLX5DR_STE_TYPE_MODIFY_PKT ;
 int MLX5DR_STE_TYPE_TX ;
 scalar_t__ MLX5_CAP_GEN (int ,int ) ;
 int dr_actions_init_next_ste (scalar_t__**,int *,int ,int ) ;
 int mlx5dr_ste_set_counter_id (scalar_t__*,int ) ;
 int mlx5dr_ste_set_entry_type (scalar_t__*,int ) ;
 int mlx5dr_ste_set_go_back_bit (scalar_t__*) ;
 int mlx5dr_ste_set_rewrite_actions (scalar_t__*,int ,int ) ;
 int mlx5dr_ste_set_tx_encap (scalar_t__*,int ,int ,scalar_t__) ;
 int mlx5dr_ste_set_tx_push_vlan (scalar_t__*,int ,int) ;
 int prio_tag_required ;

__attribute__((used)) static void dr_actions_apply_tx(struct mlx5dr_domain *dmn,
    u8 *action_type_set,
    u8 *last_ste,
    struct dr_action_apply_attr *attr,
    u32 *added_stes)
{
 bool encap = action_type_set[DR_ACTION_TYP_L2_TO_TNL_L2] ||
  action_type_set[DR_ACTION_TYP_L2_TO_TNL_L3];





 if (action_type_set[DR_ACTION_TYP_MODIFY_HDR]) {
  mlx5dr_ste_set_entry_type(last_ste, MLX5DR_STE_TYPE_MODIFY_PKT);
  mlx5dr_ste_set_rewrite_actions(last_ste,
            attr->modify_actions,
            attr->modify_index);
 }

 if (action_type_set[DR_ACTION_TYP_PUSH_VLAN]) {
  int i;

  for (i = 0; i < attr->vlans.count; i++) {
   if (i || action_type_set[DR_ACTION_TYP_MODIFY_HDR])
    dr_actions_init_next_ste(&last_ste,
        added_stes,
        MLX5DR_STE_TYPE_TX,
        attr->gvmi);

   mlx5dr_ste_set_tx_push_vlan(last_ste,
          attr->vlans.headers[i],
          encap);
  }
 }

 if (encap) {




  if (action_type_set[DR_ACTION_TYP_MODIFY_HDR] ||
      action_type_set[DR_ACTION_TYP_PUSH_VLAN])
   dr_actions_init_next_ste(&last_ste,
       added_stes,
       MLX5DR_STE_TYPE_TX,
       attr->gvmi);

  mlx5dr_ste_set_tx_encap(last_ste,
     attr->reformat_id,
     attr->reformat_size,
     action_type_set[DR_ACTION_TYP_L2_TO_TNL_L3]);





  if (MLX5_CAP_GEN(dmn->mdev, prio_tag_required))
   mlx5dr_ste_set_go_back_bit(last_ste);
 }

 if (action_type_set[DR_ACTION_TYP_CTR])
  mlx5dr_ste_set_counter_id(last_ste, attr->ctr_id);
}
