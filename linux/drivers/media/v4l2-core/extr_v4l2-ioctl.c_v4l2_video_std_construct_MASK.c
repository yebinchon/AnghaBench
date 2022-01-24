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
struct v4l2_standard {int id; int framelines; int /*<<< orphan*/  name; int /*<<< orphan*/  frameperiod; } ;

/* Variables and functions */
 int V4L2_STD_525_60 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 

int FUNC2(struct v4l2_standard *vs,
			     int id, const char *name)
{
	vs->id = id;
	FUNC1(id, &vs->frameperiod);
	vs->framelines = (id & V4L2_STD_525_60) ? 525 : 625;
	FUNC0(vs->name, name, sizeof(vs->name));
	return 0;
}