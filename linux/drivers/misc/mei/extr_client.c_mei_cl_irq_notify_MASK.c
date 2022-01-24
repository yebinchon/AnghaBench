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
typedef  scalar_t__ u32 ;
struct list_head {int dummy; } ;
struct mei_device {struct list_head ctrl_rd_list; } ;
struct mei_cl_cb {int /*<<< orphan*/  list; int /*<<< orphan*/  fop_type; } ;
struct mei_cl {int status; struct mei_device* dev; } ;
struct hbm_client_connect_request {int dummy; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int EOVERFLOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct list_head*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (struct mei_device*,struct mei_cl*,int) ; 
 int FUNC4 (struct mei_device*) ; 

int FUNC5(struct mei_cl *cl, struct mei_cl_cb *cb,
		      struct list_head *cmpl_list)
{
	struct mei_device *dev = cl->dev;
	u32 msg_slots;
	int slots;
	int ret;
	bool request;

	msg_slots = FUNC2(sizeof(struct hbm_client_connect_request));
	slots = FUNC4(dev);
	if (slots < 0)
		return -EOVERFLOW;

	if ((u32)slots < msg_slots)
		return -EMSGSIZE;

	request = FUNC1(cb->fop_type);
	ret = FUNC3(dev, cl, request);
	if (ret) {
		cl->status = ret;
		FUNC0(&cb->list, cmpl_list);
		return ret;
	}

	FUNC0(&cb->list, &dev->ctrl_rd_list);
	return 0;
}