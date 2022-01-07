
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5dr_ste_htbl_ctrl {scalar_t__ num_of_collisions; scalar_t__ increase_threshold; scalar_t__ num_of_valid_entries; int may_grow; } ;
struct mlx5dr_ste_htbl {scalar_t__ chunk_size; struct mlx5dr_ste_htbl_ctrl ctrl; } ;
struct mlx5dr_domain_rx_tx {int dummy; } ;
struct TYPE_2__ {scalar_t__ max_log_sw_icm_sz; } ;
struct mlx5dr_domain {TYPE_1__ info; } ;



__attribute__((used)) static bool dr_rule_need_enlarge_hash(struct mlx5dr_ste_htbl *htbl,
          struct mlx5dr_domain *dmn,
          struct mlx5dr_domain_rx_tx *nic_dmn)
{
 struct mlx5dr_ste_htbl_ctrl *ctrl = &htbl->ctrl;

 if (dmn->info.max_log_sw_icm_sz <= htbl->chunk_size)
  return 0;

 if (!ctrl->may_grow)
  return 0;

 if (ctrl->num_of_collisions >= ctrl->increase_threshold &&
     (ctrl->num_of_valid_entries - ctrl->num_of_collisions) >= ctrl->increase_threshold)
  return 1;

 return 0;
}
