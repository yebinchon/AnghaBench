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
struct TYPE_2__ {int trusted; } ;
struct mlx5_vport {scalar_t__ enabled; TYPE_1__ info; } ;
struct mlx5_eswitch {int /*<<< orphan*/  state_lock; } ;

/* Variables and functions */
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5_eswitch*) ; 
 scalar_t__ FUNC1 (struct mlx5_vport*) ; 
 int FUNC2 (struct mlx5_vport*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_vport*) ; 
 struct mlx5_vport* FUNC4 (struct mlx5_eswitch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct mlx5_eswitch *esw,
				 u16 vport, bool setting)
{
	struct mlx5_vport *evport = FUNC4(esw, vport);

	if (!FUNC0(esw))
		return -EPERM;
	if (FUNC1(evport))
		return FUNC2(evport);

	FUNC5(&esw->state_lock);
	evport->info.trusted = setting;
	if (evport->enabled)
		FUNC3(evport);
	FUNC6(&esw->state_lock);

	return 0;
}