
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {struct mlx5_flow_table* allowed_vlans_grp; struct mlx5_flow_table* drop_grp; struct mlx5_flow_table* acl; } ;
struct mlx5_vport {TYPE_1__ egress; int vport; } ;
struct mlx5_flow_table {int dummy; } ;
struct mlx5_flow_namespace {int dummy; } ;
typedef struct mlx5_flow_table mlx5_flow_group ;
struct mlx5_eswitch {struct mlx5_core_dev* dev; } ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_4__ {int first_vid; int cvlan_tag; } ;


 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct mlx5_flow_table*) ;
 int IS_ERR_OR_NULL (struct mlx5_flow_table*) ;
 void* MLX5_ADDR_OF (int ,int *,void*) ;
 int MLX5_CAP_ESW_EGRESS_ACL (struct mlx5_core_dev*,int ) ;
 int MLX5_FLOW_NAMESPACE_ESW_EGRESS ;
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

int esw_vport_enable_egress_acl(struct mlx5_eswitch *esw,
    struct mlx5_vport *vport)
{
 int inlen = MLX5_ST_SZ_BYTES(create_flow_group_in);
 struct mlx5_flow_group *vlan_grp = ((void*)0);
 struct mlx5_flow_group *drop_grp = ((void*)0);
 struct mlx5_core_dev *dev = esw->dev;
 struct mlx5_flow_namespace *root_ns;
 struct mlx5_flow_table *acl;
 void *match_criteria;
 u32 *flow_group_in;




 int table_size = 2;
 int err = 0;

 if (!MLX5_CAP_ESW_EGRESS_ACL(dev, ft_support))
  return -EOPNOTSUPP;

 if (!IS_ERR_OR_NULL(vport->egress.acl))
  return 0;

 esw_debug(dev, "Create vport[%d] egress ACL log_max_size(%d)\n",
    vport->vport, MLX5_CAP_ESW_EGRESS_ACL(dev, log_max_ft_size));

 root_ns = mlx5_get_flow_vport_acl_namespace(dev, MLX5_FLOW_NAMESPACE_ESW_EGRESS,
   mlx5_eswitch_vport_num_to_index(esw, vport->vport));
 if (!root_ns) {
  esw_warn(dev, "Failed to get E-Switch egress flow namespace for vport (%d)\n", vport->vport);
  return -EOPNOTSUPP;
 }

 flow_group_in = kvzalloc(inlen, GFP_KERNEL);
 if (!flow_group_in)
  return -ENOMEM;

 acl = mlx5_create_vport_flow_table(root_ns, 0, table_size, 0, vport->vport);
 if (IS_ERR(acl)) {
  err = PTR_ERR(acl);
  esw_warn(dev, "Failed to create E-Switch vport[%d] egress flow Table, err(%d)\n",
    vport->vport, err);
  goto out;
 }

 MLX5_SET(create_flow_group_in, flow_group_in, match_criteria_enable, MLX5_MATCH_OUTER_HEADERS);
 match_criteria = MLX5_ADDR_OF(create_flow_group_in, flow_group_in, match_criteria);
 MLX5_SET_TO_ONES(fte_match_param, match_criteria, outer_headers.cvlan_tag);
 MLX5_SET_TO_ONES(fte_match_param, match_criteria, outer_headers.first_vid);
 MLX5_SET(create_flow_group_in, flow_group_in, start_flow_index, 0);
 MLX5_SET(create_flow_group_in, flow_group_in, end_flow_index, 0);

 vlan_grp = mlx5_create_flow_group(acl, flow_group_in);
 if (IS_ERR(vlan_grp)) {
  err = PTR_ERR(vlan_grp);
  esw_warn(dev, "Failed to create E-Switch vport[%d] egress allowed vlans flow group, err(%d)\n",
    vport->vport, err);
  goto out;
 }

 memset(flow_group_in, 0, inlen);
 MLX5_SET(create_flow_group_in, flow_group_in, start_flow_index, 1);
 MLX5_SET(create_flow_group_in, flow_group_in, end_flow_index, 1);
 drop_grp = mlx5_create_flow_group(acl, flow_group_in);
 if (IS_ERR(drop_grp)) {
  err = PTR_ERR(drop_grp);
  esw_warn(dev, "Failed to create E-Switch vport[%d] egress drop flow group, err(%d)\n",
    vport->vport, err);
  goto out;
 }

 vport->egress.acl = acl;
 vport->egress.drop_grp = drop_grp;
 vport->egress.allowed_vlans_grp = vlan_grp;
out:
 kvfree(flow_group_in);
 if (err && !IS_ERR_OR_NULL(vlan_grp))
  mlx5_destroy_flow_group(vlan_grp);
 if (err && !IS_ERR_OR_NULL(acl))
  mlx5_destroy_flow_table(acl);
 return err;
}
