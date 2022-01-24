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
struct mt76_driver_ops {int dummy; } ;
struct mt76_dev {int /*<<< orphan*/  tx_tasklet; int /*<<< orphan*/  status_list; int /*<<< orphan*/  tx_wait; int /*<<< orphan*/  mutex; int /*<<< orphan*/  cc_lock; int /*<<< orphan*/  lock; int /*<<< orphan*/  rx_lock; struct mt76_driver_ops const* drv; struct device* dev; struct ieee80211_hw* hw; } ;
struct ieee80211_ops {int dummy; } ;
struct ieee80211_hw {struct mt76_dev* priv; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct ieee80211_hw* FUNC0 (unsigned int,struct ieee80211_ops const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mt76_tx_tasklet ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 

struct mt76_dev *
FUNC6(struct device *pdev, unsigned int size,
		  const struct ieee80211_ops *ops,
		  const struct mt76_driver_ops *drv_ops)
{
	struct ieee80211_hw *hw;
	struct mt76_dev *dev;

	hw = FUNC0(size, ops);
	if (!hw)
		return NULL;

	dev = hw->priv;
	dev->hw = hw;
	dev->dev = pdev;
	dev->drv = drv_ops;

	FUNC4(&dev->rx_lock);
	FUNC4(&dev->lock);
	FUNC4(&dev->cc_lock);
	FUNC2(&dev->mutex);
	FUNC1(&dev->tx_wait);
	FUNC3(&dev->status_list);

	FUNC5(&dev->tx_tasklet, mt76_tx_tasklet, (unsigned long)dev);

	return dev;
}