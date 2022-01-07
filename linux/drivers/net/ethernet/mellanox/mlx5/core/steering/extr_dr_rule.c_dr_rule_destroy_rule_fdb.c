
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5dr_rule {int tx; int rx; } ;


 int dr_rule_destroy_rule_nic (struct mlx5dr_rule*,int *) ;

__attribute__((used)) static int dr_rule_destroy_rule_fdb(struct mlx5dr_rule *rule)
{
 dr_rule_destroy_rule_nic(rule, &rule->rx);
 dr_rule_destroy_rule_nic(rule, &rule->tx);
 return 0;
}
