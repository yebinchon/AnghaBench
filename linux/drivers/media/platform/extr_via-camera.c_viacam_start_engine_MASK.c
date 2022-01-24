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
struct via_camera {TYPE_1__* viadev; int /*<<< orphan*/  opstate; } ;
struct TYPE_2__ {int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  S_RUNNING ; 
 int /*<<< orphan*/  VCR_CAPINTC ; 
 int /*<<< orphan*/  VCR_CI_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct via_camera*) ; 
 int /*<<< orphan*/  FUNC3 (struct via_camera*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct via_camera*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct via_camera *cam)
{
	FUNC0(&cam->viadev->reg_lock);
	FUNC4(cam, VCR_CAPINTC, VCR_CI_ENABLE, VCR_CI_ENABLE);
	FUNC2(cam);
	(void) FUNC3(cam, VCR_CAPINTC); /* Force post */
	cam->opstate = S_RUNNING;
	FUNC1(&cam->viadev->reg_lock);
}