
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef void u32 ;
struct mlx5_flow_table_attr {int max_fte; int prio; } ;
struct mlx5_flow_table {int dummy; } ;
struct mlx5_flow_namespace {int dummy; } ;
typedef struct mlx5_flow_table mlx5_flow_group ;
struct TYPE_5__ {struct mlx5_flow_table* promisc_grp; struct mlx5_flow_table* allmulti_grp; struct mlx5_flow_table* addr_grp; struct mlx5_flow_table* fdb; } ;
struct TYPE_6__ {TYPE_1__ legacy; } ;
struct mlx5_eswitch {TYPE_2__ fdb_table; struct mlx5_core_dev* dev; } ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_8__ {int source_port; } ;
struct TYPE_7__ {void* dmac_47_16; } ;


 int BIT (int ) ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct mlx5_flow_table*) ;
 int LEGACY_FDB_PRIO ;
 void* MLX5_ADDR_OF (int ,void*,void*) ;
 int MLX5_CAP_ESW_FLOWTABLE_FDB (struct mlx5_core_dev*,int ) ;
 int MLX5_MATCH_MISC_PARAMETERS ;
 int MLX5_MATCH_OUTER_HEADERS ;
 int MLX5_SET (int ,void*,int ,int) ;
 int MLX5_SET_TO_ONES (int ,void*,int ) ;
 int MLX5_ST_SZ_BYTES (int ) ;
 int PTR_ERR (struct mlx5_flow_table*) ;
 int create_flow_group_in ;
 int end_flow_index ;
 int esw_debug (struct mlx5_core_dev*,char*,int ) ;
 int esw_destroy_legacy_fdb_table (struct mlx5_eswitch*) ;
 int esw_warn (struct mlx5_core_dev*,char*,...) ;
 int eth_broadcast_addr (int*) ;
 int eth_zero_addr (int*) ;
 int fte_match_param ;
 int kvfree (void*) ;
 void* kvzalloc (int,int ) ;
 int log_max_ft_size ;
 int match_criteria_enable ;
 TYPE_4__ misc_parameters ;
 struct mlx5_flow_table* mlx5_create_flow_group (struct mlx5_flow_table*,void*) ;
 struct mlx5_flow_table* mlx5_create_flow_table (struct mlx5_flow_namespace*,struct mlx5_flow_table_attr*) ;
 struct mlx5_flow_namespace* mlx5_get_fdb_sub_ns (struct mlx5_core_dev*,int ) ;
 TYPE_3__ outer_headers ;
 int start_flow_index ;

__attribute__((used)) static int esw_create_legacy_fdb_table(struct mlx5_eswitch *esw)
{
 int inlen = MLX5_ST_SZ_BYTES(create_flow_group_in);
 struct mlx5_flow_table_attr ft_attr = {};
 struct mlx5_core_dev *dev = esw->dev;
 struct mlx5_flow_namespace *root_ns;
 struct mlx5_flow_table *fdb;
 struct mlx5_flow_group *g;
 void *match_criteria;
 int table_size;
 u32 *flow_group_in;
 u8 *dmac;
 int err = 0;

 esw_debug(dev, "Create FDB log_max_size(%d)\n",
    MLX5_CAP_ESW_FLOWTABLE_FDB(dev, log_max_ft_size));

 root_ns = mlx5_get_fdb_sub_ns(dev, 0);
 if (!root_ns) {
  esw_warn(dev, "Failed to get FDB flow namespace\n");
  return -EOPNOTSUPP;
 }

 flow_group_in = kvzalloc(inlen, GFP_KERNEL);
 if (!flow_group_in)
  return -ENOMEM;

 table_size = BIT(MLX5_CAP_ESW_FLOWTABLE_FDB(dev, log_max_ft_size));
 ft_attr.max_fte = table_size;
 ft_attr.prio = LEGACY_FDB_PRIO;
 fdb = mlx5_create_flow_table(root_ns, &ft_attr);
 if (IS_ERR(fdb)) {
  err = PTR_ERR(fdb);
  esw_warn(dev, "Failed to create FDB Table err %d\n", err);
  goto out;
 }
 esw->fdb_table.legacy.fdb = fdb;


 MLX5_SET(create_flow_group_in, flow_group_in, match_criteria_enable,
   MLX5_MATCH_OUTER_HEADERS);
 match_criteria = MLX5_ADDR_OF(create_flow_group_in, flow_group_in, match_criteria);
 dmac = MLX5_ADDR_OF(fte_match_param, match_criteria, outer_headers.dmac_47_16);
 MLX5_SET(create_flow_group_in, flow_group_in, start_flow_index, 0);

 MLX5_SET(create_flow_group_in, flow_group_in, end_flow_index, table_size - 3);
 eth_broadcast_addr(dmac);
 g = mlx5_create_flow_group(fdb, flow_group_in);
 if (IS_ERR(g)) {
  err = PTR_ERR(g);
  esw_warn(dev, "Failed to create flow group err(%d)\n", err);
  goto out;
 }
 esw->fdb_table.legacy.addr_grp = g;


 MLX5_SET(create_flow_group_in, flow_group_in, match_criteria_enable,
   MLX5_MATCH_OUTER_HEADERS);
 MLX5_SET(create_flow_group_in, flow_group_in, start_flow_index, table_size - 2);
 MLX5_SET(create_flow_group_in, flow_group_in, end_flow_index, table_size - 2);
 eth_zero_addr(dmac);
 dmac[0] = 0x01;
 g = mlx5_create_flow_group(fdb, flow_group_in);
 if (IS_ERR(g)) {
  err = PTR_ERR(g);
  esw_warn(dev, "Failed to create allmulti flow group err(%d)\n", err);
  goto out;
 }
 esw->fdb_table.legacy.allmulti_grp = g;




 eth_zero_addr(dmac);
 MLX5_SET(create_flow_group_in, flow_group_in, match_criteria_enable,
   MLX5_MATCH_MISC_PARAMETERS);
 MLX5_SET_TO_ONES(fte_match_param, match_criteria, misc_parameters.source_port);
 MLX5_SET(create_flow_group_in, flow_group_in, start_flow_index, table_size - 1);
 MLX5_SET(create_flow_group_in, flow_group_in, end_flow_index, table_size - 1);
 g = mlx5_create_flow_group(fdb, flow_group_in);
 if (IS_ERR(g)) {
  err = PTR_ERR(g);
  esw_warn(dev, "Failed to create promisc flow group err(%d)\n", err);
  goto out;
 }
 esw->fdb_table.legacy.promisc_grp = g;

out:
 if (err)
  esw_destroy_legacy_fdb_table(esw);

 kvfree(flow_group_in);
 return err;
}
