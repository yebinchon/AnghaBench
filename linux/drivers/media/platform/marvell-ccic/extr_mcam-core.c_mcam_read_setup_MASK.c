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
struct mcam_camera {scalar_t__ buffer_mode; scalar_t__ nbufs; scalar_t__ bus_type; int /*<<< orphan*/  dev_lock; int /*<<< orphan*/  flags; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 scalar_t__ B_vmalloc ; 
 int /*<<< orphan*/  CF_DMA_ACTIVE ; 
 int /*<<< orphan*/  CF_SG_RESTART ; 
 int ENOMEM ; 
 int /*<<< orphan*/  S_STREAMING ; 
 scalar_t__ V4L2_MBUS_CSI2_DPHY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct mcam_camera*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mcam_camera*) ; 
 int FUNC3 (struct mcam_camera*) ; 
 int /*<<< orphan*/  FUNC4 (struct mcam_camera*) ; 
 int /*<<< orphan*/  FUNC5 (struct mcam_camera*) ; 
 int /*<<< orphan*/  FUNC6 (struct mcam_camera*) ; 
 int /*<<< orphan*/  FUNC7 (struct mcam_camera*) ; 
 scalar_t__ FUNC8 (struct mcam_camera*) ; 
 int /*<<< orphan*/  FUNC9 (struct mcam_camera*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct mcam_camera *cam)
{
	int ret;
	unsigned long flags;

	/*
	 * Configuration.  If we still don't have DMA buffers,
	 * make one last, desperate attempt.
	 */
	if (cam->buffer_mode == B_vmalloc && cam->nbufs == 0 &&
			FUNC1(cam, 0))
		return -ENOMEM;

	if (FUNC8(cam)) {
		FUNC2(cam);
		ret = FUNC3(cam);
		if (ret)
			return ret;
	}

	/*
	 * Turn it loose.
	 */
	FUNC10(&cam->dev_lock, flags);
	FUNC0(CF_DMA_ACTIVE, &cam->flags);
	FUNC9(cam);
	if (cam->bus_type == V4L2_MBUS_CSI2_DPHY)
		FUNC7(cam);
	else
		FUNC6(cam);
	FUNC4(cam);
	cam->state = S_STREAMING;
	if (!FUNC12(CF_SG_RESTART, &cam->flags))
		FUNC5(cam);
	FUNC11(&cam->dev_lock, flags);
	return 0;
}