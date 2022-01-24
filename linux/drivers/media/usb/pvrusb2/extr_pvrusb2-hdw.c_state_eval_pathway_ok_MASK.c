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
struct pvr2_hdw {int state_pathway_ok; scalar_t__ input_val; int /*<<< orphan*/  state_pipeline_idle; } ;

/* Variables and functions */
 scalar_t__ PVR2_CVAL_INPUT_DTV ; 
 int /*<<< orphan*/  FUNC0 (struct pvr2_hdw*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

__attribute__((used)) static int FUNC2(struct pvr2_hdw *hdw)
{
	if (hdw->state_pathway_ok) {
		/* Nothing to do if pathway is already ok */
		return 0;
	}
	if (!hdw->state_pipeline_idle) {
		/* Not allowed to change anything if pipeline is not idle */
		return 0;
	}
	FUNC0(hdw,hdw->input_val == PVR2_CVAL_INPUT_DTV);
	hdw->state_pathway_ok = !0;
	FUNC1("state_pathway_ok",hdw->state_pathway_ok);
	return !0;
}