
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_fpga_ipsec_rule {int dummy; } ;
struct mlx5_fpga_ipsec {int rules_rb_lock; int rules_rb; } ;
struct fs_fte {int dummy; } ;


 struct mlx5_fpga_ipsec_rule* _rule_search (int *,struct fs_fte*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct mlx5_fpga_ipsec_rule *
rule_search(struct mlx5_fpga_ipsec *ipsec_dev, struct fs_fte *fte)
{
 struct mlx5_fpga_ipsec_rule *rule;

 mutex_lock(&ipsec_dev->rules_rb_lock);
 rule = _rule_search(&ipsec_dev->rules_rb, fte);
 mutex_unlock(&ipsec_dev->rules_rb_lock);

 return rule;
}
