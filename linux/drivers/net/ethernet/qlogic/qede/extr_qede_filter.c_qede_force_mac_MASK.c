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
typedef  int /*<<< orphan*/  u8 ;
struct qede_dev {TYPE_1__* ndev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qede_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct qede_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(void *dev, u8 *mac, bool forced)
{
	struct qede_dev *edev = dev;

	FUNC0(edev);

	if (!FUNC3(mac)) {
		FUNC1(edev);
		return;
	}

	FUNC2(edev->ndev->dev_addr, mac);
	FUNC1(edev);
}