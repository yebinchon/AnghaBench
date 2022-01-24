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
struct via_camera {int /*<<< orphan*/  flags; TYPE_1__* viadev; } ;
struct TYPE_2__ {int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CF_CONFIG_NEEDED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC3 (struct via_camera*) ; 
 int /*<<< orphan*/  FUNC4 (struct via_camera*) ; 

__attribute__((used)) static int FUNC5(struct via_camera *cam)
{
	int ret;
	unsigned long flags;

	FUNC1(&cam->viadev->reg_lock, flags);
	ret = FUNC3(cam);
	if (!ret)
		FUNC4(cam);
	FUNC2(&cam->viadev->reg_lock, flags);
	FUNC0(CF_CONFIG_NEEDED, &cam->flags);
	return ret;
}