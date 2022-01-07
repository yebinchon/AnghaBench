
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_fpga_ipsec_rule {int dummy; } ;
struct mlx5_fpga_ipsec {int rules_rb_lock; int rules_rb; } ;


 int _rule_insert (int *,struct mlx5_fpga_ipsec_rule*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int rule_insert(struct mlx5_fpga_ipsec *ipsec_dev,
         struct mlx5_fpga_ipsec_rule *rule)
{
 int ret;

 mutex_lock(&ipsec_dev->rules_rb_lock);
 ret = _rule_insert(&ipsec_dev->rules_rb, rule);
 mutex_unlock(&ipsec_dev->rules_rb_lock);

 return ret;
}
