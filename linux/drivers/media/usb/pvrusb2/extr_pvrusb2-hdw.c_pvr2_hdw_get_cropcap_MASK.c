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
struct v4l2_cropcap {int dummy; } ;
struct pvr2_hdw {int /*<<< orphan*/  big_lock; int /*<<< orphan*/  cropcap_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_cropcap*,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (struct pvr2_hdw*) ; 

int FUNC4(struct pvr2_hdw *hdw, struct v4l2_cropcap *pp)
{
	int stat = 0;
	FUNC1(hdw->big_lock);
	stat = FUNC3(hdw);
	if (!stat) {
		FUNC2(pp, &hdw->cropcap_info, sizeof(hdw->cropcap_info));
	}
	FUNC0(hdw->big_lock);
	return stat;
}