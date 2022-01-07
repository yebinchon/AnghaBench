
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5dr_matcher_rx_tx {int num_of_builders; int num_of_builders4; int ste_builder4; int ste_builder; int num_of_builders6; int ste_builder6; } ;
struct mlx5dr_matcher {TYPE_1__* tbl; } ;
struct TYPE_2__ {int dmn; } ;


 int EINVAL ;
 int mlx5dr_dbg (int ,char*) ;

int mlx5dr_matcher_select_builders(struct mlx5dr_matcher *matcher,
       struct mlx5dr_matcher_rx_tx *nic_matcher,
       bool ipv6)
{
 if (ipv6) {
  nic_matcher->ste_builder = nic_matcher->ste_builder6;
  nic_matcher->num_of_builders = nic_matcher->num_of_builders6;
 } else {
  nic_matcher->ste_builder = nic_matcher->ste_builder4;
  nic_matcher->num_of_builders = nic_matcher->num_of_builders4;
 }

 if (!nic_matcher->num_of_builders) {
  mlx5dr_dbg(matcher->tbl->dmn,
      "Rule not supported on this matcher due to IP related fields\n");
  return -EINVAL;
 }

 return 0;
}
