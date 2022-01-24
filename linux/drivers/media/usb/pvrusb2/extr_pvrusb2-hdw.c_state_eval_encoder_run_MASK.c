#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ expires; } ;
struct pvr2_hdw {int state_encoder_run; TYPE_1__ encoder_run_timer; int /*<<< orphan*/  state_encoder_runok; scalar_t__ state_encoder_ok; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIME_MSEC_ENCODER_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct pvr2_hdw*) ; 
 scalar_t__ FUNC4 (struct pvr2_hdw*) ; 
 int /*<<< orphan*/  FUNC5 (struct pvr2_hdw*) ; 
 int /*<<< orphan*/  FUNC6 (struct pvr2_hdw*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 

__attribute__((used)) static int FUNC8(struct pvr2_hdw *hdw)
{
	if (hdw->state_encoder_run) {
		if (!FUNC5(hdw)) return 0;
		if (hdw->state_encoder_ok) {
			FUNC1(&hdw->encoder_run_timer);
			if (FUNC4(hdw) < 0) return !0;
		}
		hdw->state_encoder_run = 0;
	} else {
		if (!FUNC6(hdw)) return 0;
		if (FUNC3(hdw) < 0) return !0;
		hdw->state_encoder_run = !0;
		if (!hdw->state_encoder_runok) {
			hdw->encoder_run_timer.expires = jiffies +
				 FUNC2(TIME_MSEC_ENCODER_OK);
			FUNC0(&hdw->encoder_run_timer);
		}
	}
	FUNC7("state_encoder_run",hdw->state_encoder_run);
	return !0;
}