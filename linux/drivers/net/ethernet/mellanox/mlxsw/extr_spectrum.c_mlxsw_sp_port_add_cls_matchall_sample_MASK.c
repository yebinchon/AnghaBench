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
struct tc_cls_matchall_offload {int dummy; } ;
struct mlxsw_sp_port {TYPE_2__* sample; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {scalar_t__ rate; int /*<<< orphan*/  trunc_size; int /*<<< orphan*/  truncate; int /*<<< orphan*/  psample_group; } ;
struct flow_action_entry {TYPE_1__ sample; } ;
struct TYPE_4__ {scalar_t__ rate; int /*<<< orphan*/  psample_group; int /*<<< orphan*/  trunc_size; int /*<<< orphan*/  truncate; } ;

/* Variables and functions */
 int EEXIST ; 
 int EOPNOTSUPP ; 
 scalar_t__ MLXSW_REG_MPSC_RATE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct mlxsw_sp_port*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct mlxsw_sp_port *mlxsw_sp_port,
				      struct tc_cls_matchall_offload *cls,
				      const struct flow_action_entry *act,
				      bool ingress)
{
	int err;

	if (!mlxsw_sp_port->sample)
		return -EOPNOTSUPP;
	if (FUNC4(mlxsw_sp_port->sample->psample_group)) {
		FUNC2(mlxsw_sp_port->dev, "sample already active\n");
		return -EEXIST;
	}
	if (act->sample.rate > MLXSW_REG_MPSC_RATE_MAX) {
		FUNC2(mlxsw_sp_port->dev, "sample rate not supported\n");
		return -EOPNOTSUPP;
	}

	FUNC3(mlxsw_sp_port->sample->psample_group,
			   act->sample.psample_group);
	mlxsw_sp_port->sample->truncate = act->sample.truncate;
	mlxsw_sp_port->sample->trunc_size = act->sample.trunc_size;
	mlxsw_sp_port->sample->rate = act->sample.rate;

	err = FUNC1(mlxsw_sp_port, true, act->sample.rate);
	if (err)
		goto err_port_sample_set;
	return 0;

err_port_sample_set:
	FUNC0(mlxsw_sp_port->sample->psample_group, NULL);
	return err;
}