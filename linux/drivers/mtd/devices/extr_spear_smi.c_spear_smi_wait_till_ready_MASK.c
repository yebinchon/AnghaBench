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
typedef  int /*<<< orphan*/  u32 ;
struct spear_smi {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int ETIMEDOUT ; 
 int SR_WIP ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 unsigned long jiffies ; 
 int FUNC2 (struct spear_smi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct spear_smi *dev, u32 bank,
		unsigned long timeout)
{
	unsigned long finish;
	int status;

	finish = jiffies + timeout;
	do {
		status = FUNC2(dev, bank);
		if (status < 0) {
			if (status == -ETIMEDOUT)
				continue; /* try till finish */
			return status;
		} else if (!(status & SR_WIP)) {
			return 0;
		}

		FUNC0();
	} while (!FUNC3(jiffies, finish));

	FUNC1(&dev->pdev->dev, "smi controller is busy, timeout\n");
	return -EBUSY;
}