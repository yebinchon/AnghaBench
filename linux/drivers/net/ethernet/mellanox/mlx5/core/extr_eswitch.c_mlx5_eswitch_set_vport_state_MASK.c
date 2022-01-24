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
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int link_state; } ;
struct mlx5_vport {TYPE_1__ info; } ;
struct mlx5_eswitch {int /*<<< orphan*/  state_lock; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5_eswitch*) ; 
 scalar_t__ FUNC1 (struct mlx5_vport*) ; 
 int /*<<< orphan*/  MLX5_VPORT_STATE_OP_MOD_ESW_VPORT ; 
 int FUNC2 (struct mlx5_vport*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 struct mlx5_vport* FUNC4 (struct mlx5_eswitch*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct mlx5_eswitch *esw,
				 u16 vport, int link_state)
{
	struct mlx5_vport *evport = FUNC4(esw, vport);
	int err = 0;

	if (!FUNC0(esw))
		return -EPERM;
	if (FUNC1(evport))
		return FUNC2(evport);

	FUNC6(&esw->state_lock);

	err = FUNC5(esw->dev,
					    MLX5_VPORT_STATE_OP_MOD_ESW_VPORT,
					    vport, 1, link_state);
	if (err) {
		FUNC3(esw->dev,
			       "Failed to set vport %d link state, err = %d",
			       vport, err);
		goto unlock;
	}

	evport->info.link_state = link_state;

unlock:
	FUNC7(&esw->state_lock);
	return 0;
}