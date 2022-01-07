
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5dr_table {int rx; int tx; int dmn; } ;


 int dr_table_init_nic (int ,int *) ;
 int dr_table_uninit_nic (int *) ;

__attribute__((used)) static int dr_table_init_fdb(struct mlx5dr_table *tbl)
{
 int ret;

 ret = dr_table_init_nic(tbl->dmn, &tbl->rx);
 if (ret)
  return ret;

 ret = dr_table_init_nic(tbl->dmn, &tbl->tx);
 if (ret)
  goto destroy_rx;

 return 0;

destroy_rx:
 dr_table_uninit_nic(&tbl->rx);
 return ret;
}
