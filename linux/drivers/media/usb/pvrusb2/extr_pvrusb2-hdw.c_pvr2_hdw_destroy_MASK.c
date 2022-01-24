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
struct pvr2_hdw {size_t unit_number; struct pvr2_hdw* mpeg_ctrl_info; struct pvr2_hdw* controls; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/ * vid_stream; struct pvr2_hdw* fw_buffer; int /*<<< orphan*/  encoder_wait_timer; int /*<<< orphan*/  encoder_run_timer; int /*<<< orphan*/  decoder_stabilization_timer; int /*<<< orphan*/  quiescent_timer; int /*<<< orphan*/  workpoll; } ;

/* Variables and functions */
 int /*<<< orphan*/  PVR2_TRACE_INIT ; 
 size_t PVR_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pvr2_hdw*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct pvr2_hdw*) ; 
 int /*<<< orphan*/  FUNC6 (struct pvr2_hdw*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,struct pvr2_hdw*) ; 
 int /*<<< orphan*/  pvr2_unit_mtx ; 
 struct pvr2_hdw** unit_pointers ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(struct pvr2_hdw *hdw)
{
	if (!hdw) return;
	FUNC8(PVR2_TRACE_INIT,"pvr2_hdw_destroy: hdw=%p",hdw);
	FUNC1(&hdw->workpoll);
	FUNC0(&hdw->quiescent_timer);
	FUNC0(&hdw->decoder_stabilization_timer);
	FUNC0(&hdw->encoder_run_timer);
	FUNC0(&hdw->encoder_wait_timer);
	if (hdw->fw_buffer) {
		FUNC2(hdw->fw_buffer);
		hdw->fw_buffer = NULL;
	}
	if (hdw->vid_stream) {
		FUNC7(hdw->vid_stream);
		hdw->vid_stream = NULL;
	}
	FUNC6(hdw);
	FUNC9(&hdw->v4l2_dev);
	FUNC5(hdw);
	FUNC3(&pvr2_unit_mtx);
	do {
		if ((hdw->unit_number >= 0) &&
		    (hdw->unit_number < PVR_NUM) &&
		    (unit_pointers[hdw->unit_number] == hdw)) {
			unit_pointers[hdw->unit_number] = NULL;
		}
	} while (0);
	FUNC4(&pvr2_unit_mtx);
	FUNC2(hdw->controls);
	FUNC2(hdw->mpeg_ctrl_info);
	FUNC2(hdw);
}