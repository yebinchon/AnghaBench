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
struct timer_list {int dummy; } ;
struct pvr2_hdw {int state_encoder_runok; int state_stale; int /*<<< orphan*/  workpoll; } ;

/* Variables and functions */
 int /*<<< orphan*/  encoder_run_timer ; 
 struct pvr2_hdw* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct pvr2_hdw* hdw ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static void FUNC3(struct timer_list *t)
{
	struct pvr2_hdw *hdw = FUNC0(hdw, t, encoder_run_timer);
	if (!hdw->state_encoder_runok) {
		hdw->state_encoder_runok = !0;
		FUNC2("state_encoder_runok",hdw->state_encoder_runok);
		hdw->state_stale = !0;
		FUNC1(&hdw->workpoll);
	}
}