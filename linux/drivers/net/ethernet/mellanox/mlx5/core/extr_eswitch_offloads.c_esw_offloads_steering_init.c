
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct offloads_fdb {int dummy; } ;
struct TYPE_6__ {int fdb_prio_lock; } ;
struct TYPE_4__ {TYPE_3__ offloads; } ;
struct TYPE_5__ {int num_vfs; } ;
struct mlx5_eswitch {int total_vports; TYPE_1__ fdb_table; int dev; TYPE_2__ esw_funcs; } ;


 int MLX5_SPECIAL_VPORTS (int ) ;
 int esw_create_offloads_acl_tables (struct mlx5_eswitch*) ;
 int esw_create_offloads_fdb_tables (struct mlx5_eswitch*,int) ;
 int esw_create_offloads_table (struct mlx5_eswitch*,int) ;
 int esw_create_vport_rx_group (struct mlx5_eswitch*,int) ;
 int esw_destroy_offloads_acl_tables (struct mlx5_eswitch*) ;
 int esw_destroy_offloads_fdb_tables (struct mlx5_eswitch*) ;
 int esw_destroy_offloads_table (struct mlx5_eswitch*) ;
 int memset (TYPE_3__*,int ,int) ;
 scalar_t__ mlx5_core_is_ecpf_esw_manager (int ) ;
 int mutex_init (int *) ;

__attribute__((used)) static int esw_offloads_steering_init(struct mlx5_eswitch *esw)
{
 int num_vfs = esw->esw_funcs.num_vfs;
 int total_vports;
 int err;

 if (mlx5_core_is_ecpf_esw_manager(esw->dev))
  total_vports = esw->total_vports;
 else
  total_vports = num_vfs + MLX5_SPECIAL_VPORTS(esw->dev);

 memset(&esw->fdb_table.offloads, 0, sizeof(struct offloads_fdb));
 mutex_init(&esw->fdb_table.offloads.fdb_prio_lock);

 err = esw_create_offloads_acl_tables(esw);
 if (err)
  return err;

 err = esw_create_offloads_fdb_tables(esw, total_vports);
 if (err)
  goto create_fdb_err;

 err = esw_create_offloads_table(esw, total_vports);
 if (err)
  goto create_ft_err;

 err = esw_create_vport_rx_group(esw, total_vports);
 if (err)
  goto create_fg_err;

 return 0;

create_fg_err:
 esw_destroy_offloads_table(esw);

create_ft_err:
 esw_destroy_offloads_fdb_tables(esw);

create_fdb_err:
 esw_destroy_offloads_acl_tables(esw);

 return err;
}
