#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* mc_head; int /*<<< orphan*/  check_func; } ;
struct pvr2_v4l2 {void* dev_radio; TYPE_2__ channel; void* dev_video; } ;
struct pvr2_context {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  hdw; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PVR2_CVAL_INPUT_RADIO ; 
 int /*<<< orphan*/  PVR2_TRACE_STRUCT ; 
 int /*<<< orphan*/  VFL_TYPE_GRABBER ; 
 int /*<<< orphan*/  VFL_TYPE_RADIO ; 
 void* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,struct pvr2_context*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,struct pvr2_v4l2*) ; 
 int /*<<< orphan*/  FUNC4 (struct pvr2_v4l2*) ; 
 int /*<<< orphan*/  FUNC5 (void*,struct pvr2_v4l2*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pvr2_v4l2_internal_check ; 

struct pvr2_v4l2 *FUNC6(struct pvr2_context *mnp)
{
	struct pvr2_v4l2 *vp;

	vp = FUNC0(sizeof(*vp),GFP_KERNEL);
	if (!vp) return vp;
	FUNC1(&vp->channel,mnp);
	FUNC3(PVR2_TRACE_STRUCT,"Creating pvr2_v4l2 id=%p",vp);

	vp->channel.check_func = pvr2_v4l2_internal_check;

	/* register streams */
	vp->dev_video = FUNC0(sizeof(*vp->dev_video),GFP_KERNEL);
	if (!vp->dev_video) goto fail;
	FUNC5(vp->dev_video,vp,VFL_TYPE_GRABBER);
	if (FUNC2(vp->channel.mc_head->hdw) &
	    (1 << PVR2_CVAL_INPUT_RADIO)) {
		vp->dev_radio = FUNC0(sizeof(*vp->dev_radio),GFP_KERNEL);
		if (!vp->dev_radio) goto fail;
		FUNC5(vp->dev_radio,vp,VFL_TYPE_RADIO);
	}

	return vp;
 fail:
	FUNC3(PVR2_TRACE_STRUCT,"Failure creating pvr2_v4l2 id=%p",vp);
	FUNC4(vp);
	return NULL;
}