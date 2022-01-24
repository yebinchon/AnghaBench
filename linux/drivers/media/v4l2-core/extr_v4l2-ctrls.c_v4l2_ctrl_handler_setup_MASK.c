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
struct v4l2_ctrl_handler {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (struct v4l2_ctrl_handler*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct v4l2_ctrl_handler *hdl)
{
	int ret;

	if (hdl == NULL)
		return 0;

	FUNC1(hdl->lock);
	ret = FUNC0(hdl);
	FUNC2(hdl->lock);

	return ret;
}