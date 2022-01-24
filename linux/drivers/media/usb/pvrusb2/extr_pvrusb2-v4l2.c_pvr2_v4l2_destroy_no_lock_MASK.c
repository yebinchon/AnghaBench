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
struct pvr2_v4l2 {int /*<<< orphan*/  channel; int /*<<< orphan*/ * dev_radio; int /*<<< orphan*/ * dev_video; } ;

/* Variables and functions */
 int /*<<< orphan*/  PVR2_TRACE_STRUCT ; 
 int /*<<< orphan*/  FUNC0 (struct pvr2_v4l2*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,struct pvr2_v4l2*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct pvr2_v4l2 *vp)
{
	if (vp->dev_video) {
		FUNC3(vp->dev_video);
		vp->dev_video = NULL;
	}
	if (vp->dev_radio) {
		FUNC3(vp->dev_radio);
		vp->dev_radio = NULL;
	}

	FUNC2(PVR2_TRACE_STRUCT,"Destroying pvr2_v4l2 id=%p",vp);
	FUNC1(&vp->channel);
	FUNC0(vp);
}