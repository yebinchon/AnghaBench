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
struct emac_instance {int /*<<< orphan*/  link_work; scalar_t__ link_polling; int /*<<< orphan*/  ndev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PHY_POLL_LINK_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(struct emac_instance *dev)
{
	FUNC1(dev->ndev);
	FUNC3();
	if (dev->link_polling) {
		FUNC0(&dev->link_work);
		if (dev->link_polling)
			FUNC2(&dev->link_work,  PHY_POLL_LINK_OFF);
	}
}