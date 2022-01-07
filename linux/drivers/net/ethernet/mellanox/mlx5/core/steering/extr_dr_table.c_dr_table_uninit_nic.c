
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5dr_table_rx_tx {int s_anchor; } ;


 int mlx5dr_htbl_put (int ) ;

__attribute__((used)) static void dr_table_uninit_nic(struct mlx5dr_table_rx_tx *nic_tbl)
{
 mlx5dr_htbl_put(nic_tbl->s_anchor);
}
