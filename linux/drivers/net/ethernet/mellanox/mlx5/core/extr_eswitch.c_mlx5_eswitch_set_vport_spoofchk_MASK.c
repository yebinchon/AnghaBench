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
struct TYPE_2__ {int spoofchk; int /*<<< orphan*/  mac; } ;
struct mlx5_vport {TYPE_1__ info; scalar_t__ enabled; int /*<<< orphan*/  vport; } ;
struct mlx5_eswitch {scalar_t__ mode; int /*<<< orphan*/  state_lock; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5_eswitch*) ; 
 scalar_t__ FUNC1 (struct mlx5_vport*) ; 
 scalar_t__ MLX5_ESWITCH_LEGACY ; 
 int FUNC2 (struct mlx5_vport*) ; 
 int FUNC3 (struct mlx5_eswitch*,struct mlx5_vport*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct mlx5_vport* FUNC6 (struct mlx5_eswitch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct mlx5_eswitch *esw,
				    u16 vport, bool spoofchk)
{
	struct mlx5_vport *evport = FUNC6(esw, vport);
	bool pschk;
	int err = 0;

	if (!FUNC0(esw))
		return -EPERM;
	if (FUNC1(evport))
		return FUNC2(evport);

	FUNC7(&esw->state_lock);
	pschk = evport->info.spoofchk;
	evport->info.spoofchk = spoofchk;
	if (pschk && !FUNC4(evport->info.mac))
		FUNC5(esw->dev,
			       "Spoofchk in set while MAC is invalid, vport(%d)\n",
			       evport->vport);
	if (evport->enabled && esw->mode == MLX5_ESWITCH_LEGACY)
		err = FUNC3(esw, evport);
	if (err)
		evport->info.spoofchk = pschk;
	FUNC8(&esw->state_lock);

	return err;
}