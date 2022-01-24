#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mlx5_geneve {int /*<<< orphan*/  obj_id; int /*<<< orphan*/  mdev; scalar_t__ refcount; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlx5_geneve*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_geneve*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct mlx5_geneve *geneve)
{
	if (FUNC0(geneve))
		return;

	/* Lockless since we are unloading */
	if (geneve->refcount)
		FUNC2(geneve->mdev, geneve->obj_id);

	FUNC1(geneve);
}