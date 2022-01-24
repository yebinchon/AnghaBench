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
struct ipaq_micro_msg {int /*<<< orphan*/  node; int /*<<< orphan*/  tx_len; int /*<<< orphan*/  id; } ;
struct ipaq_micro {int /*<<< orphan*/  lock; struct ipaq_micro_msg* msg; int /*<<< orphan*/  queue; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ipaq_micro*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC5(struct ipaq_micro *micro, struct ipaq_micro_msg *msg)
{
	unsigned long flags;

	FUNC0(micro->dev, "TX msg: %02x, %d bytes\n", msg->id, msg->tx_len);

	FUNC3(&micro->lock, flags);
	if (micro->msg) {
		FUNC2(&msg->node, &micro->queue);
		FUNC4(&micro->lock, flags);
		return 0;
	}
	micro->msg = msg;
	FUNC1(micro);
	FUNC4(&micro->lock, flags);
	return 0;
}