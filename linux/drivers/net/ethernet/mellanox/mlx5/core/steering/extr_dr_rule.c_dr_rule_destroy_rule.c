
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5dr_rule {int tx; int rx; TYPE_2__* matcher; } ;
struct mlx5dr_domain {int type; } ;
struct TYPE_4__ {TYPE_1__* tbl; } ;
struct TYPE_3__ {struct mlx5dr_domain* dmn; } ;


 int EINVAL ;



 int dr_rule_destroy_rule_fdb (struct mlx5dr_rule*) ;
 int dr_rule_destroy_rule_nic (struct mlx5dr_rule*,int *) ;
 int dr_rule_remove_action_members (struct mlx5dr_rule*) ;
 int kfree (struct mlx5dr_rule*) ;

__attribute__((used)) static int dr_rule_destroy_rule(struct mlx5dr_rule *rule)
{
 struct mlx5dr_domain *dmn = rule->matcher->tbl->dmn;

 switch (dmn->type) {
 case 129:
  dr_rule_destroy_rule_nic(rule, &rule->rx);
  break;
 case 128:
  dr_rule_destroy_rule_nic(rule, &rule->tx);
  break;
 case 130:
  dr_rule_destroy_rule_fdb(rule);
  break;
 default:
  return -EINVAL;
 }

 dr_rule_remove_action_members(rule);
 kfree(rule);
 return 0;
}
