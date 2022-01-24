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
struct timer_list {int dummy; } ;
struct TYPE_2__ {scalar_t__ expires; } ;
struct cadet {int* rdsbuf; size_t rdsin; int rdsout; TYPE_1__ readtimer; int /*<<< orphan*/  read_queue; int /*<<< orphan*/  lock; scalar_t__ io; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (struct cadet*) ; 
 struct cadet* dev ; 
 struct cadet* FUNC2 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  readtimer ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct timer_list *t)
{
	struct cadet *dev = FUNC2(dev, t, readtimer);

	/* Service the RDS fifo */
	if (FUNC5(&dev->lock)) {
		FUNC7(0x3, dev->io);       /* Select RDS Decoder Control */
		if ((FUNC3(dev->io + 1) & 0x20) != 0)
			FUNC8("cadet: RDS fifo overflow\n");
		FUNC7(0x80, dev->io);      /* Select RDS fifo */

		while ((FUNC3(dev->io) & 0x80) != 0) {
			dev->rdsbuf[dev->rdsin] = FUNC3(dev->io + 1);
			if (dev->rdsin + 1 != dev->rdsout)
				dev->rdsin++;
		}
		FUNC6(&dev->lock);
	}

	/*
	 * Service pending read
	 */
	if (FUNC1(dev))
		FUNC9(&dev->read_queue);

	/*
	 * Clean up and exit
	 */
	dev->readtimer.expires = jiffies + FUNC4(50);
	FUNC0(&dev->readtimer);
}