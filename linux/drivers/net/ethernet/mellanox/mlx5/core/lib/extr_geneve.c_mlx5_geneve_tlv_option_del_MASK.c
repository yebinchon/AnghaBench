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
struct mlx5_geneve {scalar_t__ refcount; int /*<<< orphan*/  sync_lock; scalar_t__ obj_id; scalar_t__ opt_type; scalar_t__ opt_class; int /*<<< orphan*/  mdev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlx5_geneve*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct mlx5_geneve *geneve)
{
	if (FUNC0(geneve))
		return;

	FUNC2(&geneve->sync_lock);
	if (--geneve->refcount == 0) {
		/* We've just removed the last user of Geneve option.
		 * Now delete the object in FW.
		 */
		FUNC1(geneve->mdev, geneve->obj_id);

		geneve->opt_class = 0;
		geneve->opt_type = 0;
		geneve->obj_id = 0;
	}
	FUNC3(&geneve->sync_lock);
}