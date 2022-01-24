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
struct v4l2_tuner {int dummy; } ;
struct pvr2_hdw {int /*<<< orphan*/  big_lock; int /*<<< orphan*/  tuner_signal_info; scalar_t__ tuner_signal_stale; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_tuner*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pvr2_hdw*) ; 

int FUNC4(struct pvr2_hdw *hdw,struct v4l2_tuner *vtp)
{
	FUNC1(hdw->big_lock); do {
		if (hdw->tuner_signal_stale) {
			FUNC3(hdw);
		}
		FUNC2(vtp,&hdw->tuner_signal_info,sizeof(struct v4l2_tuner));
	} while (0); FUNC0(hdw->big_lock);
	return 0;
}