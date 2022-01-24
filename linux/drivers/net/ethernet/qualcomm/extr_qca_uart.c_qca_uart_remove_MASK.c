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
struct serdev_device {int dummy; } ;
struct qcauart {int /*<<< orphan*/  net_dev; int /*<<< orphan*/  tx_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct serdev_device*) ; 
 struct qcauart* FUNC3 (struct serdev_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct serdev_device *serdev)
{
	struct qcauart *qca = FUNC3(serdev);

	FUNC4(qca->net_dev);

	/* Flush any pending characters in the driver. */
	FUNC2(serdev);
	FUNC0(&qca->tx_work);

	FUNC1(qca->net_dev);
}