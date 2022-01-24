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
struct mei_device {int dummy; } ;
struct mei_cl {int notify_ev; scalar_t__ ev_async; int /*<<< orphan*/  ev_wait; int /*<<< orphan*/  notify_en; struct mei_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  POLL_PRI ; 
 int /*<<< orphan*/  SIGIO ; 
 int /*<<< orphan*/  FUNC0 (struct mei_device*,struct mei_cl*,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mei_cl*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct mei_cl *cl)
{
	struct mei_device *dev;

	if (!cl || !cl->dev)
		return;

	dev = cl->dev;

	if (!cl->notify_en)
		return;

	FUNC0(dev, cl, "notify event");
	cl->notify_ev = true;
	if (!FUNC2(cl))
		FUNC3(&cl->ev_wait);

	if (cl->ev_async)
		FUNC1(&cl->ev_async, SIGIO, POLL_PRI);

}