
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5_flow_table {int dummy; } ;
struct mlx5_flow_namespace {int dummy; } ;
struct TYPE_3__ {struct mlx5_flow_table* vepa_fdb; } ;
struct TYPE_4__ {TYPE_1__ legacy; } ;
struct mlx5_eswitch {TYPE_2__ fdb_table; struct mlx5_core_dev* dev; } ;
struct mlx5_core_dev {int dummy; } ;


 int EOPNOTSUPP ;
 scalar_t__ IS_ERR (struct mlx5_flow_table*) ;
 int LEGACY_VEPA_PRIO ;
 int PTR_ERR (struct mlx5_flow_table*) ;
 int esw_warn (struct mlx5_core_dev*,char*,...) ;
 struct mlx5_flow_table* mlx5_create_auto_grouped_flow_table (struct mlx5_flow_namespace*,int ,int,int,int ,int ) ;
 struct mlx5_flow_namespace* mlx5_get_fdb_sub_ns (struct mlx5_core_dev*,int ) ;

__attribute__((used)) static int esw_create_legacy_vepa_table(struct mlx5_eswitch *esw)
{
 struct mlx5_core_dev *dev = esw->dev;
 struct mlx5_flow_namespace *root_ns;
 struct mlx5_flow_table *fdb;
 int err;

 root_ns = mlx5_get_fdb_sub_ns(dev, 0);
 if (!root_ns) {
  esw_warn(dev, "Failed to get FDB flow namespace\n");
  return -EOPNOTSUPP;
 }


 fdb = mlx5_create_auto_grouped_flow_table(root_ns, LEGACY_VEPA_PRIO,
        2, 2, 0, 0);
 if (IS_ERR(fdb)) {
  err = PTR_ERR(fdb);
  esw_warn(dev, "Failed to create VEPA FDB err %d\n", err);
  return err;
 }
 esw->fdb_table.legacy.vepa_fdb = fdb;

 return 0;
}
