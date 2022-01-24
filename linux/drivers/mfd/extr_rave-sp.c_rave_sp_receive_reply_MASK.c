#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rave_sp_reply {unsigned char const code; unsigned char const ackid; size_t const length; int /*<<< orphan*/  received; int /*<<< orphan*/  data; } ;
struct rave_sp {int /*<<< orphan*/  reply_lock; struct rave_sp_reply* reply; TYPE_1__* serdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,unsigned char const,size_t const) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned char const*,size_t const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct rave_sp *sp,
				  const unsigned char *data, size_t length)
{
	struct device *dev = &sp->serdev->dev;
	struct rave_sp_reply *reply;
	const  size_t payload_length = length - 2;

	FUNC4(&sp->reply_lock);
	reply = sp->reply;

	if (reply) {
		if (reply->code == data[0] && reply->ackid == data[1] &&
		    payload_length >= reply->length) {
			/*
			 * We are relying on memcpy(dst, src, 0) to be a no-op
			 * when handling commands that have a no-payload reply
			 */
			FUNC3(reply->data, &data[2], reply->length);
			FUNC0(&reply->received);
			sp->reply = NULL;
		} else {
			FUNC2(dev, "Ignoring incorrect reply\n");
			FUNC1(dev, "Code:   expected = 0x%08x received = 0x%08x\n",
				reply->code, data[0]);
			FUNC1(dev, "ACK ID: expected = 0x%08x received = 0x%08x\n",
				reply->ackid, data[1]);
			FUNC1(dev, "Length: expected = %zu received = %zu\n",
				reply->length, payload_length);
		}
	}

	FUNC5(&sp->reply_lock);
}