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
struct mei_device {int /*<<< orphan*/  ctrl_rd_list; } ;
struct mei_cl_cb {int /*<<< orphan*/  list; } ;
struct mei_cl {int status; int /*<<< orphan*/  timer_count; int /*<<< orphan*/  state; struct mei_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MEI_CONNECT_TIMEOUT ; 
 int /*<<< orphan*/  MEI_FILE_DISCONNECT_REPLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct mei_device*,struct mei_cl*) ; 
 int /*<<< orphan*/  FUNC2 (struct mei_device*) ; 

__attribute__((used)) static int FUNC3(struct mei_cl *cl, struct mei_cl_cb *cb)
{
	struct mei_device *dev;
	int ret;

	dev = cl->dev;

	ret = FUNC1(dev, cl);
	cl->status = ret;
	if (ret) {
		cl->state = MEI_FILE_DISCONNECT_REPLY;
		return ret;
	}

	FUNC0(&cb->list, &dev->ctrl_rd_list);
	cl->timer_count = MEI_CONNECT_TIMEOUT;
	FUNC2(dev);
	return 0;
}