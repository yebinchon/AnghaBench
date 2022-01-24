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
struct mlx5e_tc_flow_parse_attr {int dummy; } ;
struct mlx5e_tc_flow {unsigned long flags; int /*<<< orphan*/  init_done; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  hairpin; int /*<<< orphan*/  mod_hdr; TYPE_1__* encaps; struct mlx5e_priv* priv; int /*<<< orphan*/  cookie; } ;
struct mlx5e_priv {int dummy; } ;
struct flow_cls_offload {int /*<<< orphan*/  cookie; } ;
struct TYPE_2__ {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int MLX5_MAX_FLOW_FWD_VPORTS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5e_tc_flow*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5e_tc_flow_parse_attr*) ; 
 struct mlx5e_tc_flow_parse_attr* FUNC4 (int,int /*<<< orphan*/ ) ; 
 struct mlx5e_tc_flow* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC7(struct mlx5e_priv *priv, int attr_size,
		 struct flow_cls_offload *f, unsigned long flow_flags,
		 struct mlx5e_tc_flow_parse_attr **__parse_attr,
		 struct mlx5e_tc_flow **__flow)
{
	struct mlx5e_tc_flow_parse_attr *parse_attr;
	struct mlx5e_tc_flow *flow;
	int out_index, err;

	flow = FUNC5(sizeof(*flow) + attr_size, GFP_KERNEL);
	parse_attr = FUNC4(sizeof(*parse_attr), GFP_KERNEL);
	if (!parse_attr || !flow) {
		err = -ENOMEM;
		goto err_free;
	}

	flow->cookie = f->cookie;
	flow->flags = flow_flags;
	flow->priv = priv;
	for (out_index = 0; out_index < MLX5_MAX_FLOW_FWD_VPORTS; out_index++)
		FUNC0(&flow->encaps[out_index].list);
	FUNC0(&flow->mod_hdr);
	FUNC0(&flow->hairpin);
	FUNC6(&flow->refcnt, 1);
	FUNC1(&flow->init_done);

	*__flow = flow;
	*__parse_attr = parse_attr;

	return 0;

err_free:
	FUNC2(flow);
	FUNC3(parse_attr);
	return err;
}