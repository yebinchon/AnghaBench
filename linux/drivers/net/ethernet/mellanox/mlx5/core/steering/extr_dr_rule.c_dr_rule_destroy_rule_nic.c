
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5dr_rule_rx_tx {int dummy; } ;
struct mlx5dr_rule {int dummy; } ;


 int dr_rule_clean_rule_members (struct mlx5dr_rule*,struct mlx5dr_rule_rx_tx*) ;

__attribute__((used)) static int dr_rule_destroy_rule_nic(struct mlx5dr_rule *rule,
        struct mlx5dr_rule_rx_tx *nic_rule)
{
 dr_rule_clean_rule_members(rule, nic_rule);
 return 0;
}
