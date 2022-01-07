
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_fpga_ipsec_rule {int dummy; } ;
struct mlx5_fpga_ipsec {int dummy; } ;


 int _rule_delete (struct mlx5_fpga_ipsec*,struct mlx5_fpga_ipsec_rule*) ;
 int kfree (struct mlx5_fpga_ipsec_rule*) ;

__attribute__((used)) static void rule_delete(struct mlx5_fpga_ipsec *ipsec_dev,
   struct mlx5_fpga_ipsec_rule *rule)
{
 _rule_delete(ipsec_dev, rule);
 kfree(rule);
}
