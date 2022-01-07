
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5dr_table {TYPE_1__* dmn; int tx; int rx; } ;
struct TYPE_2__ {int type; int mutex; } ;





 int WARN_ON (int) ;
 int dr_table_uninit_fdb (struct mlx5dr_table*) ;
 int dr_table_uninit_nic (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void dr_table_uninit(struct mlx5dr_table *tbl)
{
 mutex_lock(&tbl->dmn->mutex);

 switch (tbl->dmn->type) {
 case 129:
  dr_table_uninit_nic(&tbl->rx);
  break;
 case 128:
  dr_table_uninit_nic(&tbl->tx);
  break;
 case 130:
  dr_table_uninit_fdb(tbl);
  break;
 default:
  WARN_ON(1);
  break;
 }

 mutex_unlock(&tbl->dmn->mutex);
}
