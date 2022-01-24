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
struct mcam_camera {int /*<<< orphan*/  dev_lock; int /*<<< orphan*/  (* dma_setup ) (struct mcam_camera*) ;int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CF_SG_RESTART ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mcam_camera*) ; 
 int /*<<< orphan*/  FUNC2 (struct mcam_camera*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct mcam_camera*) ; 

__attribute__((used)) static int FUNC6(struct mcam_camera *cam)
{
	unsigned long flags;

	FUNC3(&cam->dev_lock, flags);
	FUNC0(CF_SG_RESTART, &cam->flags);
	cam->dma_setup(cam);
	FUNC1(cam);
	FUNC2(cam, 0);
	FUNC4(&cam->dev_lock, flags);
	return 0;
}