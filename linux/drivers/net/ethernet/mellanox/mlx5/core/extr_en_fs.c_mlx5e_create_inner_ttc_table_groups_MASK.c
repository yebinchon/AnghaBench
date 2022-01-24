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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct mlx5e_flow_table {size_t num_groups; int /*<<< orphan*/ ** g; int /*<<< orphan*/  t; } ;
struct mlx5e_ttc_table {struct mlx5e_flow_table ft; } ;
struct TYPE_2__ {int /*<<< orphan*/  ip_protocol; int /*<<< orphan*/  ip_version; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ MLX5E_INNER_TTC_GROUP1_SIZE ; 
 scalar_t__ MLX5E_INNER_TTC_GROUP2_SIZE ; 
 scalar_t__ MLX5E_INNER_TTC_GROUP3_SIZE ; 
 int /*<<< orphan*/  MLX5E_INNER_TTC_NUM_GROUPS ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int MLX5_MATCH_INNER_HEADERS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  create_flow_group_in ; 
 int /*<<< orphan*/  end_flow_index ; 
 int /*<<< orphan*/  fte_match_param ; 
 TYPE_1__ inner_headers ; 
 int /*<<< orphan*/ ** FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  match_criteria ; 
 int /*<<< orphan*/  match_criteria_enable ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 void* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  start_flow_index ; 

__attribute__((used)) static int FUNC13(struct mlx5e_ttc_table *ttc)
{
	int inlen = FUNC5(create_flow_group_in);
	struct mlx5e_flow_table *ft = &ttc->ft;
	int ix = 0;
	u32 *in;
	int err;
	u8 *mc;

	ft->g = FUNC7(MLX5E_INNER_TTC_NUM_GROUPS, sizeof(*ft->g), GFP_KERNEL);
	if (!ft->g)
		return -ENOMEM;
	in = FUNC10(inlen, GFP_KERNEL);
	if (!in) {
		FUNC8(ft->g);
		return -ENOMEM;
	}

	/* L4 Group */
	mc = FUNC1(create_flow_group_in, in, match_criteria);
	FUNC4(fte_match_param, mc, inner_headers.ip_protocol);
	FUNC4(fte_match_param, mc, inner_headers.ip_version);
	FUNC3(in, match_criteria_enable, MLX5_MATCH_INNER_HEADERS);
	FUNC3(in, start_flow_index, ix);
	ix += MLX5E_INNER_TTC_GROUP1_SIZE;
	FUNC3(in, end_flow_index, ix - 1);
	ft->g[ft->num_groups] = FUNC12(ft->t, in);
	if (FUNC0(ft->g[ft->num_groups]))
		goto err;
	ft->num_groups++;

	/* L3 Group */
	FUNC2(fte_match_param, mc, inner_headers.ip_protocol, 0);
	FUNC3(in, start_flow_index, ix);
	ix += MLX5E_INNER_TTC_GROUP2_SIZE;
	FUNC3(in, end_flow_index, ix - 1);
	ft->g[ft->num_groups] = FUNC12(ft->t, in);
	if (FUNC0(ft->g[ft->num_groups]))
		goto err;
	ft->num_groups++;

	/* Any Group */
	FUNC11(in, 0, inlen);
	FUNC3(in, start_flow_index, ix);
	ix += MLX5E_INNER_TTC_GROUP3_SIZE;
	FUNC3(in, end_flow_index, ix - 1);
	ft->g[ft->num_groups] = FUNC12(ft->t, in);
	if (FUNC0(ft->g[ft->num_groups]))
		goto err;
	ft->num_groups++;

	FUNC9(in);
	return 0;

err:
	err = FUNC6(ft->g[ft->num_groups]);
	ft->g[ft->num_groups] = NULL;
	FUNC9(in);

	return err;
}