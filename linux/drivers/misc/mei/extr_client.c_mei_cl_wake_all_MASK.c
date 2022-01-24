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
struct mei_cl {int /*<<< orphan*/  wait; int /*<<< orphan*/  ev_wait; int /*<<< orphan*/  tx_wait; int /*<<< orphan*/  rx_wait; struct mei_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mei_device*,struct mei_cl*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct mei_cl *cl)
{
	struct mei_device *dev = cl->dev;

	/* synchronized under device mutex */
	if (FUNC1(&cl->rx_wait)) {
		FUNC0(dev, cl, "Waking up reading client!\n");
		FUNC3(&cl->rx_wait);
	}
	/* synchronized under device mutex */
	if (FUNC1(&cl->tx_wait)) {
		FUNC0(dev, cl, "Waking up writing client!\n");
		FUNC3(&cl->tx_wait);
	}
	/* synchronized under device mutex */
	if (FUNC1(&cl->ev_wait)) {
		FUNC0(dev, cl, "Waking up waiting for event clients!\n");
		FUNC3(&cl->ev_wait);
	}
	/* synchronized under device mutex */
	if (FUNC1(&cl->wait)) {
		FUNC0(dev, cl, "Waking up ctrl write clients!\n");
		FUNC2(&cl->wait);
	}
}