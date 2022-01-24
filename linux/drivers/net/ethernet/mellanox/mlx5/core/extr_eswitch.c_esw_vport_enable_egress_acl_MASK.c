#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {struct mlx5_flow_table* allowed_vlans_grp; struct mlx5_flow_table* drop_grp; struct mlx5_flow_table* acl; } ;
struct mlx5_vport {TYPE_1__ egress; int /*<<< orphan*/  vport; } ;
struct mlx5_flow_table {int dummy; } ;
struct mlx5_flow_namespace {int dummy; } ;
typedef  struct mlx5_flow_table mlx5_flow_group ;
struct mlx5_eswitch {struct mlx5_core_dev* dev; } ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  first_vid; int /*<<< orphan*/  cvlan_tag; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct mlx5_flow_table*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_flow_table*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_FLOW_NAMESPACE_ESW_EGRESS ; 
 int MLX5_MATCH_OUTER_HEADERS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct mlx5_flow_table*) ; 
 int /*<<< orphan*/  create_flow_group_in ; 
 int /*<<< orphan*/  end_flow_index ; 
 int /*<<< orphan*/  FUNC8 (struct mlx5_core_dev*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx5_core_dev*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  ft_support ; 
 int /*<<< orphan*/  fte_match_param ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  log_max_ft_size ; 
 int /*<<< orphan*/  match_criteria_enable ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct mlx5_flow_table* FUNC13 (struct mlx5_flow_table*,int /*<<< orphan*/ *) ; 
 struct mlx5_flow_table* FUNC14 (struct mlx5_flow_namespace*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct mlx5_flow_table*) ; 
 int /*<<< orphan*/  FUNC16 (struct mlx5_flow_table*) ; 
 int /*<<< orphan*/  FUNC17 (struct mlx5_eswitch*,int /*<<< orphan*/ ) ; 
 struct mlx5_flow_namespace* FUNC18 (struct mlx5_core_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ outer_headers ; 
 int /*<<< orphan*/  start_flow_index ; 

int FUNC19(struct mlx5_eswitch *esw,
				struct mlx5_vport *vport)
{
	int inlen = FUNC6(create_flow_group_in);
	struct mlx5_flow_group *vlan_grp = NULL;
	struct mlx5_flow_group *drop_grp = NULL;
	struct mlx5_core_dev *dev = esw->dev;
	struct mlx5_flow_namespace *root_ns;
	struct mlx5_flow_table *acl;
	void *match_criteria;
	u32 *flow_group_in;
	/* The egress acl table contains 2 rules:
	 * 1)Allow traffic with vlan_tag=vst_vlan_id
	 * 2)Drop all other traffic.
	 */
	int table_size = 2;
	int err = 0;

	if (!FUNC3(dev, ft_support))
		return -EOPNOTSUPP;

	if (!FUNC1(vport->egress.acl))
		return 0;

	FUNC8(dev, "Create vport[%d] egress ACL log_max_size(%d)\n",
		  vport->vport, FUNC3(dev, log_max_ft_size));

	root_ns = FUNC18(dev, MLX5_FLOW_NAMESPACE_ESW_EGRESS,
			FUNC17(esw, vport->vport));
	if (!root_ns) {
		FUNC9(dev, "Failed to get E-Switch egress flow namespace for vport (%d)\n", vport->vport);
		return -EOPNOTSUPP;
	}

	flow_group_in = FUNC11(inlen, GFP_KERNEL);
	if (!flow_group_in)
		return -ENOMEM;

	acl = FUNC14(root_ns, 0, table_size, 0, vport->vport);
	if (FUNC0(acl)) {
		err = FUNC7(acl);
		FUNC9(dev, "Failed to create E-Switch vport[%d] egress flow Table, err(%d)\n",
			 vport->vport, err);
		goto out;
	}

	FUNC4(create_flow_group_in, flow_group_in, match_criteria_enable, MLX5_MATCH_OUTER_HEADERS);
	match_criteria = FUNC2(create_flow_group_in, flow_group_in, match_criteria);
	FUNC5(fte_match_param, match_criteria, outer_headers.cvlan_tag);
	FUNC5(fte_match_param, match_criteria, outer_headers.first_vid);
	FUNC4(create_flow_group_in, flow_group_in, start_flow_index, 0);
	FUNC4(create_flow_group_in, flow_group_in, end_flow_index, 0);

	vlan_grp = FUNC13(acl, flow_group_in);
	if (FUNC0(vlan_grp)) {
		err = FUNC7(vlan_grp);
		FUNC9(dev, "Failed to create E-Switch vport[%d] egress allowed vlans flow group, err(%d)\n",
			 vport->vport, err);
		goto out;
	}

	FUNC12(flow_group_in, 0, inlen);
	FUNC4(create_flow_group_in, flow_group_in, start_flow_index, 1);
	FUNC4(create_flow_group_in, flow_group_in, end_flow_index, 1);
	drop_grp = FUNC13(acl, flow_group_in);
	if (FUNC0(drop_grp)) {
		err = FUNC7(drop_grp);
		FUNC9(dev, "Failed to create E-Switch vport[%d] egress drop flow group, err(%d)\n",
			 vport->vport, err);
		goto out;
	}

	vport->egress.acl = acl;
	vport->egress.drop_grp = drop_grp;
	vport->egress.allowed_vlans_grp = vlan_grp;
out:
	FUNC10(flow_group_in);
	if (err && !FUNC1(vlan_grp))
		FUNC15(vlan_grp);
	if (err && !FUNC1(acl))
		FUNC16(acl);
	return err;
}