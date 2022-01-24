#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {TYPE_2__* mc_head; } ;
struct pvr2_v4l2_fh {struct pvr2_v4l2_fh* input_map; TYPE_9__ channel; int /*<<< orphan*/  fh; int /*<<< orphan*/ * rhp; TYPE_1__* pdi; } ;
struct TYPE_13__ {TYPE_3__* mc_head; } ;
struct pvr2_v4l2 {TYPE_8__* dev_radio; TYPE_6__* dev_video; TYPE_4__ channel; } ;
struct pvr2_stream {int dummy; } ;
struct pvr2_hdw {int dummy; } ;
struct file {struct pvr2_v4l2_fh* private_data; } ;
struct TYPE_16__ {int /*<<< orphan*/  fh_list; } ;
struct TYPE_17__ {TYPE_7__ devbase; } ;
struct TYPE_14__ {int /*<<< orphan*/  fh_list; } ;
struct TYPE_15__ {TYPE_5__ devbase; } ;
struct TYPE_12__ {scalar_t__ disconnect_flag; } ;
struct TYPE_11__ {struct pvr2_hdw* hdw; } ;
struct TYPE_10__ {struct pvr2_v4l2* v4lp; } ;

/* Variables and functions */
 int /*<<< orphan*/  PVR2_TRACE_OPEN_CLOSE ; 
 int /*<<< orphan*/  PVR2_TRACE_STRUCT ; 
 int /*<<< orphan*/  FUNC0 (struct pvr2_v4l2_fh*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC3 (struct pvr2_hdw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct pvr2_stream* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct pvr2_stream*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct pvr2_v4l2*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct file *file)
{
	struct pvr2_v4l2_fh *fhp = file->private_data;
	struct pvr2_v4l2 *vp = fhp->pdi->v4lp;
	struct pvr2_hdw *hdw = fhp->channel.mc_head->hdw;

	FUNC7(PVR2_TRACE_OPEN_CLOSE,"pvr2_v4l2_release");

	if (fhp->rhp) {
		struct pvr2_stream *sp;
		FUNC3(hdw,0);
		sp = FUNC5(fhp->rhp);
		if (sp) FUNC6(sp,NULL,NULL);
		FUNC4(fhp->rhp);
		fhp->rhp = NULL;
	}

	FUNC9(&fhp->fh);
	FUNC10(&fhp->fh);
	file->private_data = NULL;

	FUNC2(&fhp->channel);
	FUNC7(PVR2_TRACE_STRUCT,
		   "Destroying pvr_v4l2_fh id=%p",fhp);
	if (fhp->input_map) {
		FUNC0(fhp->input_map);
		fhp->input_map = NULL;
	}
	FUNC0(fhp);
	if (vp->channel.mc_head->disconnect_flag &&
	    FUNC1(&vp->dev_video->devbase.fh_list) &&
	    FUNC1(&vp->dev_radio->devbase.fh_list)) {
		FUNC8(vp);
	}
	return 0;
}