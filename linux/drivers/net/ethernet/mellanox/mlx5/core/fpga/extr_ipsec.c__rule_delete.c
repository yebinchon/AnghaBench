
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb_root {int dummy; } ;
struct mlx5_fpga_ipsec_rule {int node; } ;
struct mlx5_fpga_ipsec {int rules_rb_lock; struct rb_root rules_rb; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rb_erase (int *,struct rb_root*) ;

__attribute__((used)) static inline void _rule_delete(struct mlx5_fpga_ipsec *ipsec_dev,
    struct mlx5_fpga_ipsec_rule *rule)
{
 struct rb_root *root = &ipsec_dev->rules_rb;

 mutex_lock(&ipsec_dev->rules_rb_lock);
 rb_erase(&rule->node, root);
 mutex_unlock(&ipsec_dev->rules_rb_lock);
}
