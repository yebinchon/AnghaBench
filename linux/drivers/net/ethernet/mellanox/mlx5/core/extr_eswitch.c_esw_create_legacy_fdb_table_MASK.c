#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  void u32 ;
struct mlx5_flow_table_attr {int max_fte; int /*<<< orphan*/  prio; } ;
struct mlx5_flow_table {int dummy; } ;
struct mlx5_flow_namespace {int dummy; } ;
typedef  struct mlx5_flow_table mlx5_flow_group ;
struct TYPE_5__ {struct mlx5_flow_table* promisc_grp; struct mlx5_flow_table* allmulti_grp; struct mlx5_flow_table* addr_grp; struct mlx5_flow_table* fdb; } ;
struct TYPE_6__ {TYPE_1__ legacy; } ;
struct mlx5_eswitch {TYPE_2__ fdb_table; struct mlx5_core_dev* dev; } ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  source_port; } ;
struct TYPE_7__ {void* dmac_47_16; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct mlx5_flow_table*) ; 
 int /*<<< orphan*/  LEGACY_FDB_PRIO ; 
 void* FUNC2 (int /*<<< orphan*/ ,void*,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int MLX5_MATCH_MISC_PARAMETERS ; 
 int MLX5_MATCH_OUTER_HEADERS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct mlx5_flow_table*) ; 
 int /*<<< orphan*/  create_flow_group_in ; 
 int /*<<< orphan*/  end_flow_index ; 
 int /*<<< orphan*/  FUNC8 (struct mlx5_core_dev*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx5_eswitch*) ; 
 int /*<<< orphan*/  FUNC10 (struct mlx5_core_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int*) ; 
 int /*<<< orphan*/  FUNC12 (int*) ; 
 int /*<<< orphan*/  fte_match_param ; 
 int /*<<< orphan*/  FUNC13 (void*) ; 
 void* FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  log_max_ft_size ; 
 int /*<<< orphan*/  match_criteria_enable ; 
 TYPE_4__ misc_parameters ; 
 struct mlx5_flow_table* FUNC15 (struct mlx5_flow_table*,void*) ; 
 struct mlx5_flow_table* FUNC16 (struct mlx5_flow_namespace*,struct mlx5_flow_table_attr*) ; 
 struct mlx5_flow_namespace* FUNC17 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 TYPE_3__ outer_headers ; 
 int /*<<< orphan*/  start_flow_index ; 

__attribute__((used)) static int FUNC18(struct mlx5_eswitch *esw)
{
	int inlen = FUNC6(create_flow_group_in);
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

	FUNC8(dev, "Create FDB log_max_size(%d)\n",
		  FUNC3(dev, log_max_ft_size));

	root_ns = FUNC17(dev, 0);
	if (!root_ns) {
		FUNC10(dev, "Failed to get FDB flow namespace\n");
		return -EOPNOTSUPP;
	}

	flow_group_in = FUNC14(inlen, GFP_KERNEL);
	if (!flow_group_in)
		return -ENOMEM;

	table_size = FUNC0(FUNC3(dev, log_max_ft_size));
	ft_attr.max_fte = table_size;
	ft_attr.prio = LEGACY_FDB_PRIO;
	fdb = FUNC16(root_ns, &ft_attr);
	if (FUNC1(fdb)) {
		err = FUNC7(fdb);
		FUNC10(dev, "Failed to create FDB Table err %d\n", err);
		goto out;
	}
	esw->fdb_table.legacy.fdb = fdb;

	/* Addresses group : Full match unicast/multicast addresses */
	FUNC4(create_flow_group_in, flow_group_in, match_criteria_enable,
		 MLX5_MATCH_OUTER_HEADERS);
	match_criteria = FUNC2(create_flow_group_in, flow_group_in, match_criteria);
	dmac = FUNC2(fte_match_param, match_criteria, outer_headers.dmac_47_16);
	FUNC4(create_flow_group_in, flow_group_in, start_flow_index, 0);
	/* Preserve 2 entries for allmulti and promisc rules*/
	FUNC4(create_flow_group_in, flow_group_in, end_flow_index, table_size - 3);
	FUNC11(dmac);
	g = FUNC15(fdb, flow_group_in);
	if (FUNC1(g)) {
		err = FUNC7(g);
		FUNC10(dev, "Failed to create flow group err(%d)\n", err);
		goto out;
	}
	esw->fdb_table.legacy.addr_grp = g;

	/* Allmulti group : One rule that forwards any mcast traffic */
	FUNC4(create_flow_group_in, flow_group_in, match_criteria_enable,
		 MLX5_MATCH_OUTER_HEADERS);
	FUNC4(create_flow_group_in, flow_group_in, start_flow_index, table_size - 2);
	FUNC4(create_flow_group_in, flow_group_in, end_flow_index, table_size - 2);
	FUNC12(dmac);
	dmac[0] = 0x01;
	g = FUNC15(fdb, flow_group_in);
	if (FUNC1(g)) {
		err = FUNC7(g);
		FUNC10(dev, "Failed to create allmulti flow group err(%d)\n", err);
		goto out;
	}
	esw->fdb_table.legacy.allmulti_grp = g;

	/* Promiscuous group :
	 * One rule that forward all unmatched traffic from previous groups
	 */
	FUNC12(dmac);
	FUNC4(create_flow_group_in, flow_group_in, match_criteria_enable,
		 MLX5_MATCH_MISC_PARAMETERS);
	FUNC5(fte_match_param, match_criteria, misc_parameters.source_port);
	FUNC4(create_flow_group_in, flow_group_in, start_flow_index, table_size - 1);
	FUNC4(create_flow_group_in, flow_group_in, end_flow_index, table_size - 1);
	g = FUNC15(fdb, flow_group_in);
	if (FUNC1(g)) {
		err = FUNC7(g);
		FUNC10(dev, "Failed to create promisc flow group err(%d)\n", err);
		goto out;
	}
	esw->fdb_table.legacy.promisc_grp = g;

out:
	if (err)
		FUNC9(esw);

	FUNC13(flow_group_in);
	return err;
}