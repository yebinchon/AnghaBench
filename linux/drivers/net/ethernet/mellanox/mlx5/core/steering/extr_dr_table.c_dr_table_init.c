
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int * nic_dmn; } ;
struct mlx5dr_table {TYPE_2__* dmn; TYPE_3__ tx; TYPE_3__ rx; int table_type; int matcher_list; } ;
struct TYPE_4__ {int tx; int rx; } ;
struct TYPE_5__ {int type; int mutex; TYPE_1__ info; } ;


 int INIT_LIST_HEAD (int *) ;



 int MLX5_FLOW_TABLE_TYPE_FDB ;
 int MLX5_FLOW_TABLE_TYPE_NIC_RX ;
 int MLX5_FLOW_TABLE_TYPE_NIC_TX ;
 int WARN_ON (int) ;
 int dr_table_init_fdb (struct mlx5dr_table*) ;
 int dr_table_init_nic (TYPE_2__*,TYPE_3__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int dr_table_init(struct mlx5dr_table *tbl)
{
 int ret = 0;

 INIT_LIST_HEAD(&tbl->matcher_list);

 mutex_lock(&tbl->dmn->mutex);

 switch (tbl->dmn->type) {
 case 129:
  tbl->table_type = MLX5_FLOW_TABLE_TYPE_NIC_RX;
  tbl->rx.nic_dmn = &tbl->dmn->info.rx;
  ret = dr_table_init_nic(tbl->dmn, &tbl->rx);
  break;
 case 128:
  tbl->table_type = MLX5_FLOW_TABLE_TYPE_NIC_TX;
  tbl->tx.nic_dmn = &tbl->dmn->info.tx;
  ret = dr_table_init_nic(tbl->dmn, &tbl->tx);
  break;
 case 130:
  tbl->table_type = MLX5_FLOW_TABLE_TYPE_FDB;
  tbl->rx.nic_dmn = &tbl->dmn->info.rx;
  tbl->tx.nic_dmn = &tbl->dmn->info.tx;
  ret = dr_table_init_fdb(tbl);
  break;
 default:
  WARN_ON(1);
  break;
 }

 mutex_unlock(&tbl->dmn->mutex);

 return ret;
}
