
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5dr_matcher_rx_tx {int e_anchor; int s_htbl; } ;


 int mlx5dr_htbl_put (int ) ;

__attribute__((used)) static void dr_matcher_uninit_nic(struct mlx5dr_matcher_rx_tx *nic_matcher)
{
 mlx5dr_htbl_put(nic_matcher->s_htbl);
 mlx5dr_htbl_put(nic_matcher->e_anchor);
}
