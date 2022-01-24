#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  void* u8 ;
struct rave_sp_reply {void* data; size_t length; int /*<<< orphan*/  received; int /*<<< orphan*/  code; void* ackid; } ;
struct rave_sp {int /*<<< orphan*/  bus_lock; int /*<<< orphan*/  reply_lock; struct rave_sp_reply* reply; TYPE_3__* serdev; int /*<<< orphan*/  ackid; TYPE_2__* variant; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int (* translate ) (unsigned char) ;} ;
struct TYPE_5__ {TYPE_1__ cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  HZ ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (struct rave_sp*,unsigned char*,size_t) ; 
 int FUNC7 (unsigned char) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC9(struct rave_sp *sp,
		 void *__data,  size_t data_size,
		 void *reply_data, size_t reply_data_size)
{
	struct rave_sp_reply reply = {
		.data     = reply_data,
		.length   = reply_data_size,
		.received = FUNC0(reply.received),
	};
	unsigned char *data = __data;
	int command, ret = 0;
	u8 ackid;

	command = sp->variant->cmd.translate(data[0]);
	if (command < 0)
		return command;

	ackid       = FUNC1(&sp->ackid);
	reply.ackid = ackid;
	reply.code  = FUNC5((u8)command),

	FUNC3(&sp->bus_lock);

	FUNC3(&sp->reply_lock);
	sp->reply = &reply;
	FUNC4(&sp->reply_lock);

	data[0] = command;
	data[1] = ackid;

	FUNC6(sp, data, data_size);

	if (!FUNC8(&reply.received, HZ)) {
		FUNC2(&sp->serdev->dev, "Command timeout\n");
		ret = -ETIMEDOUT;

		FUNC3(&sp->reply_lock);
		sp->reply = NULL;
		FUNC4(&sp->reply_lock);
	}

	FUNC4(&sp->bus_lock);
	return ret;
}