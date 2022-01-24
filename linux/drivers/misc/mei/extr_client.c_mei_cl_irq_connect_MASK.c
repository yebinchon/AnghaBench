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
struct mei_device {int dummy; } ;
struct mei_cl_cb {int /*<<< orphan*/  list; } ;
struct mei_cl {struct mei_device* dev; } ;
struct list_head {int dummy; } ;
struct hbm_client_connect_request {int dummy; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int EOVERFLOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct list_head*) ; 
 scalar_t__ FUNC1 (struct mei_cl*) ; 
 int FUNC2 (struct mei_cl*,struct mei_cl_cb*) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (struct mei_device*) ; 

int FUNC5(struct mei_cl *cl, struct mei_cl_cb *cb,
		       struct list_head *cmpl_list)
{
	struct mei_device *dev = cl->dev;
	u32 msg_slots;
	int slots;
	int rets;

	if (FUNC1(cl))
		return 0;

	msg_slots = FUNC3(sizeof(struct hbm_client_connect_request));
	slots = FUNC4(dev);
	if (slots < 0)
		return -EOVERFLOW;

	if ((u32)slots < msg_slots)
		return -EMSGSIZE;

	rets = FUNC2(cl, cb);
	if (rets)
		FUNC0(&cb->list, cmpl_list);

	return rets;
}