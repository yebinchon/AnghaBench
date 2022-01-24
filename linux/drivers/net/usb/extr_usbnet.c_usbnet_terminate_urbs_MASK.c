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
struct usbnet {int /*<<< orphan*/  wait; int /*<<< orphan*/  net; int /*<<< orphan*/  done; int /*<<< orphan*/  txq; int /*<<< orphan*/  rxq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  ifdown ; 
 int /*<<< orphan*/  FUNC2 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct usbnet*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct usbnet *dev)
{
	FUNC0(wait, current);
	int temp;

	/* ensure there are no more active urbs */
	FUNC1(&dev->wait, &wait);
	FUNC4(TASK_UNINTERRUPTIBLE);
	temp = FUNC5(dev, &dev->txq) +
		FUNC5(dev, &dev->rxq);

	/* maybe wait for deletions to finish. */
	FUNC6(&dev->rxq);
	FUNC6(&dev->txq);
	FUNC6(&dev->done);
	FUNC2(dev, ifdown, dev->net,
		  "waited for %d urb completions\n", temp);
	FUNC4(TASK_RUNNING);
	FUNC3(&dev->wait, &wait);
}