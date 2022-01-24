#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct mlx5e_flow_table {size_t num_groups; int /*<<< orphan*/ ** g; int /*<<< orphan*/  t; } ;
struct mlx5e_l2_table {struct mlx5e_flow_table ft; } ;
struct TYPE_2__ {int /*<<< orphan*/  dmac_47_16; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ MLX5E_L2_GROUP1_SIZE ; 
 scalar_t__ MLX5E_L2_GROUP2_SIZE ; 
 scalar_t__ MLX5E_L2_GROUP3_SIZE ; 
 int /*<<< orphan*/  MLX5E_NUM_L2_GROUPS ; 
 int* FUNC1 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int MLX5_MATCH_OUTER_HEADERS ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  create_flow_group_in ; 
 int /*<<< orphan*/  end_flow_index ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 int /*<<< orphan*/  FUNC6 (int*) ; 
 int /*<<< orphan*/  fte_match_param ; 
 int /*<<< orphan*/ ** FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int*) ; 
 int* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  match_criteria ; 
 int /*<<< orphan*/  match_criteria_enable ; 
 void* FUNC11 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC12 (struct mlx5e_flow_table*) ; 
 TYPE_1__ outer_headers ; 
 int /*<<< orphan*/  start_flow_index ; 

__attribute__((used)) static int FUNC13(struct mlx5e_l2_table *l2_table)
{
	int inlen = FUNC3(create_flow_group_in);
	struct mlx5e_flow_table *ft = &l2_table->ft;
	int ix = 0;
	u8 *mc_dmac;
	u32 *in;
	int err;
	u8 *mc;

	ft->g = FUNC7(MLX5E_NUM_L2_GROUPS, sizeof(*ft->g), GFP_KERNEL);
	if (!ft->g)
		return -ENOMEM;
	in = FUNC10(inlen, GFP_KERNEL);
	if (!in) {
		FUNC8(ft->g);
		return -ENOMEM;
	}

	mc = FUNC1(create_flow_group_in, in, match_criteria);
	mc_dmac = FUNC1(fte_match_param, mc,
			       outer_headers.dmac_47_16);
	/* Flow Group for promiscuous */
	FUNC2(in, start_flow_index, ix);
	ix += MLX5E_L2_GROUP1_SIZE;
	FUNC2(in, end_flow_index, ix - 1);
	ft->g[ft->num_groups] = FUNC11(ft->t, in);
	if (FUNC0(ft->g[ft->num_groups]))
		goto err_destroy_groups;
	ft->num_groups++;

	/* Flow Group for full match */
	FUNC5(mc_dmac);
	FUNC2(in, match_criteria_enable, MLX5_MATCH_OUTER_HEADERS);
	FUNC2(in, start_flow_index, ix);
	ix += MLX5E_L2_GROUP2_SIZE;
	FUNC2(in, end_flow_index, ix - 1);
	ft->g[ft->num_groups] = FUNC11(ft->t, in);
	if (FUNC0(ft->g[ft->num_groups]))
		goto err_destroy_groups;
	ft->num_groups++;

	/* Flow Group for allmulti */
	FUNC6(mc_dmac);
	mc_dmac[0] = 0x01;
	FUNC2(in, start_flow_index, ix);
	ix += MLX5E_L2_GROUP3_SIZE;
	FUNC2(in, end_flow_index, ix - 1);
	ft->g[ft->num_groups] = FUNC11(ft->t, in);
	if (FUNC0(ft->g[ft->num_groups]))
		goto err_destroy_groups;
	ft->num_groups++;

	FUNC9(in);
	return 0;

err_destroy_groups:
	err = FUNC4(ft->g[ft->num_groups]);
	ft->g[ft->num_groups] = NULL;
	FUNC12(ft);
	FUNC9(in);

	return err;
}