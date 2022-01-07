
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5dr_table {int tx; int rx; } ;


 int dr_table_uninit_nic (int *) ;

__attribute__((used)) static void dr_table_uninit_fdb(struct mlx5dr_table *tbl)
{
 dr_table_uninit_nic(&tbl->rx);
 dr_table_uninit_nic(&tbl->tx);
}
