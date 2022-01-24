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
struct pvr2_hdw {int /*<<< orphan*/  big_lock; int /*<<< orphan*/  enc_ctl_state; int /*<<< orphan*/  v4l2_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PVR2_TRACE_INFO ; 
 int /*<<< orphan*/  core ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  log_status ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int FUNC4 (struct pvr2_hdw*) ; 
 int /*<<< orphan*/  FUNC5 (struct pvr2_hdw*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC8(struct pvr2_hdw *hdw)
{
	int nr = FUNC4(hdw);
	FUNC1(hdw->big_lock);
	do {
		FUNC3("pvrusb2: =================  START STATUS CARD #%d  =================\n", nr);
		FUNC7(&hdw->v4l2_dev, 0, core, log_status);
		FUNC6(PVR2_TRACE_INFO,"cx2341x config:");
		FUNC2(&hdw->enc_ctl_state, "pvrusb2");
		FUNC5(hdw);
		FUNC3("pvrusb2: ==================  END STATUS CARD #%d  ==================\n", nr);
	} while (0);
	FUNC0(hdw->big_lock);
}