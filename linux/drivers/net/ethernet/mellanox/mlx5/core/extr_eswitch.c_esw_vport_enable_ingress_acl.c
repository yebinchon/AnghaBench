
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {struct mlx5_flow_table* acl; struct mlx5_flow_table* allow_untagged_spoofchk_grp; struct mlx5_flow_table* allow_untagged_only_grp; struct mlx5_flow_table* allow_spoofchk_only_grp; struct mlx5_flow_table* drop_grp; } ;
struct mlx5_vport {TYPE_1__ ingress; int vport; } ;
struct mlx5_flow_table {int dummy; } ;
struct mlx5_flow_namespace {int dummy; } ;
typedef struct mlx5_flow_table mlx5_flow_group ;
struct mlx5_eswitch {struct mlx5_core_dev* dev; } ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_4__ {int smac_15_0; int smac_47_16; int cvlan_tag; } ;


 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct mlx5_flow_table*) ;
 int IS_ERR_OR_NULL (struct mlx5_flow_table*) ;
 void* MLX5_ADDR_OF (int ,int *,void*) ;
 int MLX5_CAP_ESW_INGRESS_ACL (struct mlx5_core_dev*,int ) ;
 int MLX5_FLOW_NAMESPACE_ESW_INGRESS ;
 int MLX5_MATCH_OUTER_HEADERS ;
 int MLX5_SET (int ,int *,int ,int) ;
 int MLX5_SET_TO_ONES (int ,void*,int ) ;
 int MLX5_ST_SZ_BYTES (int ) ;
 int PTR_ERR (struct mlx5_flow_table*) ;
 int create_flow_group_in ;
 int end_flow_index ;
 int esw_debug (struct mlx5_core_dev*,char*,int ,int ) ;
 int esw_warn (struct mlx5_core_dev*,char*,int ,...) ;
 int ft_support ;
 int fte_match_param ;
 int kvfree (int *) ;
 int * kvzalloc (int,int ) ;
 int log_max_ft_size ;
 int match_criteria_enable ;
 int memset (int *,int ,int) ;
 struct mlx5_flow_table* mlx5_create_flow_group (struct mlx5_flow_table*,int *) ;
 struct mlx5_flow_table* mlx5_create_vport_flow_table (struct mlx5_flow_namespace*,int ,int,int ,int ) ;
 int mlx5_destroy_flow_group (struct mlx5_flow_table*) ;
 int mlx5_destroy_flow_table (struct mlx5_flow_table*) ;
 int mlx5_eswitch_vport_num_to_index (struct mlx5_eswitch*,int ) ;
 struct mlx5_flow_namespace* mlx5_get_flow_vport_acl_namespace (struct mlx5_core_dev*,int ,int ) ;
 TYPE_2__ outer_headers ;
 int start_flow_index ;

int esw_vport_enable_ingress_acl(struct mlx5_eswitch *esw,
     struct mlx5_vport *vport)
{
 int inlen = MLX5_ST_SZ_BYTES(create_flow_group_in);
 struct mlx5_core_dev *dev = esw->dev;
 struct mlx5_flow_namespace *root_ns;
 struct mlx5_flow_table *acl;
 struct mlx5_flow_group *g;
 void *match_criteria;
 u32 *flow_group_in;
 int table_size = 4;
 int err = 0;

 if (!MLX5_CAP_ESW_INGRESS_ACL(dev, ft_support))
  return -EOPNOTSUPP;

 if (!IS_ERR_OR_NULL(vport->ingress.acl))
  return 0;

 esw_debug(dev, "Create vport[%d] ingress ACL log_max_size(%d)\n",
    vport->vport, MLX5_CAP_ESW_INGRESS_ACL(dev, log_max_ft_size));

 root_ns = mlx5_get_flow_vport_acl_namespace(dev, MLX5_FLOW_NAMESPACE_ESW_INGRESS,
   mlx5_eswitch_vport_num_to_index(esw, vport->vport));
 if (!root_ns) {
  esw_warn(dev, "Failed to get E-Switch ingress flow namespace for vport (%d)\n", vport->vport);
  return -EOPNOTSUPP;
 }

 flow_group_in = kvzalloc(inlen, GFP_KERNEL);
 if (!flow_group_in)
  return -ENOMEM;

 acl = mlx5_create_vport_flow_table(root_ns, 0, table_size, 0, vport->vport);
 if (IS_ERR(acl)) {
  err = PTR_ERR(acl);
  esw_warn(dev, "Failed to create E-Switch vport[%d] ingress flow Table, err(%d)\n",
    vport->vport, err);
  goto out;
 }
 vport->ingress.acl = acl;

 match_criteria = MLX5_ADDR_OF(create_flow_group_in, flow_group_in, match_criteria);

 MLX5_SET(create_flow_group_in, flow_group_in, match_criteria_enable, MLX5_MATCH_OUTER_HEADERS);
 MLX5_SET_TO_ONES(fte_match_param, match_criteria, outer_headers.cvlan_tag);
 MLX5_SET_TO_ONES(fte_match_param, match_criteria, outer_headers.smac_47_16);
 MLX5_SET_TO_ONES(fte_match_param, match_criteria, outer_headers.smac_15_0);
 MLX5_SET(create_flow_group_in, flow_group_in, start_flow_index, 0);
 MLX5_SET(create_flow_group_in, flow_group_in, end_flow_index, 0);

 g = mlx5_create_flow_group(acl, flow_group_in);
 if (IS_ERR(g)) {
  err = PTR_ERR(g);
  esw_warn(dev, "Failed to create E-Switch vport[%d] ingress untagged spoofchk flow group, err(%d)\n",
    vport->vport, err);
  goto out;
 }
 vport->ingress.allow_untagged_spoofchk_grp = g;

 memset(flow_group_in, 0, inlen);
 MLX5_SET(create_flow_group_in, flow_group_in, match_criteria_enable, MLX5_MATCH_OUTER_HEADERS);
 MLX5_SET_TO_ONES(fte_match_param, match_criteria, outer_headers.cvlan_tag);
 MLX5_SET(create_flow_group_in, flow_group_in, start_flow_index, 1);
 MLX5_SET(create_flow_group_in, flow_group_in, end_flow_index, 1);

 g = mlx5_create_flow_group(acl, flow_group_in);
 if (IS_ERR(g)) {
  err = PTR_ERR(g);
  esw_warn(dev, "Failed to create E-Switch vport[%d] ingress untagged flow group, err(%d)\n",
    vport->vport, err);
  goto out;
 }
 vport->ingress.allow_untagged_only_grp = g;

 memset(flow_group_in, 0, inlen);
 MLX5_SET(create_flow_group_in, flow_group_in, match_criteria_enable, MLX5_MATCH_OUTER_HEADERS);
 MLX5_SET_TO_ONES(fte_match_param, match_criteria, outer_headers.smac_47_16);
 MLX5_SET_TO_ONES(fte_match_param, match_criteria, outer_headers.smac_15_0);
 MLX5_SET(create_flow_group_in, flow_group_in, start_flow_index, 2);
 MLX5_SET(create_flow_group_in, flow_group_in, end_flow_index, 2);

 g = mlx5_create_flow_group(acl, flow_group_in);
 if (IS_ERR(g)) {
  err = PTR_ERR(g);
  esw_warn(dev, "Failed to create E-Switch vport[%d] ingress spoofchk flow group, err(%d)\n",
    vport->vport, err);
  goto out;
 }
 vport->ingress.allow_spoofchk_only_grp = g;

 memset(flow_group_in, 0, inlen);
 MLX5_SET(create_flow_group_in, flow_group_in, start_flow_index, 3);
 MLX5_SET(create_flow_group_in, flow_group_in, end_flow_index, 3);

 g = mlx5_create_flow_group(acl, flow_group_in);
 if (IS_ERR(g)) {
  err = PTR_ERR(g);
  esw_warn(dev, "Failed to create E-Switch vport[%d] ingress drop flow group, err(%d)\n",
    vport->vport, err);
  goto out;
 }
 vport->ingress.drop_grp = g;

out:
 if (err) {
  if (!IS_ERR_OR_NULL(vport->ingress.allow_spoofchk_only_grp))
   mlx5_destroy_flow_group(
     vport->ingress.allow_spoofchk_only_grp);
  if (!IS_ERR_OR_NULL(vport->ingress.allow_untagged_only_grp))
   mlx5_destroy_flow_group(
     vport->ingress.allow_untagged_only_grp);
  if (!IS_ERR_OR_NULL(vport->ingress.allow_untagged_spoofchk_grp))
   mlx5_destroy_flow_group(
    vport->ingress.allow_untagged_spoofchk_grp);
  if (!IS_ERR_OR_NULL(vport->ingress.acl))
   mlx5_destroy_flow_table(vport->ingress.acl);
 }

 kvfree(flow_group_in);
 return err;
}
