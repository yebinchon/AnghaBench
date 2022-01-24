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
struct mt76_txwi_cache {int dummy; } ;
struct mt76_dev {int /*<<< orphan*/  dev; } ;
struct mt7615_txp {int nbuf; int /*<<< orphan*/ * len; int /*<<< orphan*/ * buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct mt7615_txp* FUNC3 (struct mt76_dev*,struct mt76_txwi_cache*) ; 

void FUNC4(struct mt76_dev *dev,
			  struct mt76_txwi_cache *t)
{
	struct mt7615_txp *txp;
	int i;

	txp = FUNC3(dev, t);
	for (i = 1; i < txp->nbuf; i++)
		FUNC0(dev->dev, FUNC2(txp->buf[i]),
				 FUNC1(txp->len[i]), DMA_TO_DEVICE);
}