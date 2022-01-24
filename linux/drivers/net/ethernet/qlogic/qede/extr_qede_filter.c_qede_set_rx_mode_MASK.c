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
struct qede_dev {int /*<<< orphan*/  sp_task; int /*<<< orphan*/  sp_flags; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  QEDE_SP_RX_MODE ; 
 struct qede_dev* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC3(struct net_device *ndev)
{
	struct qede_dev *edev = FUNC0(ndev);

	FUNC2(QEDE_SP_RX_MODE, &edev->sp_flags);
	FUNC1(&edev->sp_task, 0);
}