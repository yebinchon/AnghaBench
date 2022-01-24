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
struct cx18 {int /*<<< orphan*/ * streams; } ;

/* Variables and functions */
 int CX18_MAX_STREAMS ; 
 int FUNC0 (struct cx18*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct cx18*,int /*<<< orphan*/ ) ; 

int FUNC3(struct cx18 *cx)
{
	int type, ret;

	/* Setup V4L2 Devices */
	for (type = 0; type < CX18_MAX_STREAMS; type++) {
		/* Prepare device */
		ret = FUNC0(cx, type);
		if (ret < 0)
			break;

		/* Allocate Stream */
		ret = FUNC1(&cx->streams[type]);
		if (ret < 0)
			break;
	}
	if (type == CX18_MAX_STREAMS)
		return 0;

	/* One or more streams could not be initialized. Clean 'em all up. */
	FUNC2(cx, 0);
	return ret;
}