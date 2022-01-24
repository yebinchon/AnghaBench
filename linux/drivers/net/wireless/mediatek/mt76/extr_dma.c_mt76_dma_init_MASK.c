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
struct mt76_dev {int /*<<< orphan*/ * napi; int /*<<< orphan*/ * rx_skb; int /*<<< orphan*/ * q_rx; int /*<<< orphan*/  napi_dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mt76_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mt76_dma_rx_poll ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct mt76_dev *dev)
{
	int i;

	FUNC1(&dev->napi_dev);

	for (i = 0; i < FUNC0(dev->q_rx); i++) {
		FUNC4(&dev->napi_dev, &dev->napi[i], mt76_dma_rx_poll,
			       64);
		FUNC2(dev, &dev->q_rx[i]);
		FUNC5(&dev->rx_skb[i]);
		FUNC3(&dev->napi[i]);
	}

	return 0;
}