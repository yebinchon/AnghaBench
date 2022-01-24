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
struct mt76_dev {int /*<<< orphan*/ * q_rx; int /*<<< orphan*/ * napi; int /*<<< orphan*/ * q_tx; int /*<<< orphan*/  tx_napi; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mt76_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mt76_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct mt76_dev *dev)
{
	int i;

	FUNC3(&dev->tx_napi);
	for (i = 0; i < FUNC0(dev->q_tx); i++)
		FUNC2(dev, i, true);

	for (i = 0; i < FUNC0(dev->q_rx); i++) {
		FUNC3(&dev->napi[i]);
		FUNC1(dev, &dev->q_rx[i]);
	}
}