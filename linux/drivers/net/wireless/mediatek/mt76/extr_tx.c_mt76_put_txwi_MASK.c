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
struct mt76_txwi_cache {int /*<<< orphan*/  list; } ;
struct mt76_dev {int /*<<< orphan*/  lock; int /*<<< orphan*/  txwi_cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(struct mt76_dev *dev, struct mt76_txwi_cache *t)
{
	if (!t)
		return;

	FUNC1(&dev->lock);
	FUNC0(&t->list, &dev->txwi_cache);
	FUNC2(&dev->lock);
}