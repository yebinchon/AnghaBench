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
struct mt76_wcid {int /*<<< orphan*/  rssi; int /*<<< orphan*/  inactive_count; } ;
struct mt76_dev {unsigned long* wcid_mask; int /*<<< orphan*/  rx_lock; int /*<<< orphan*/ * wcid; } ;
typedef  int s8 ;

/* Variables and functions */
 int FUNC0 (unsigned long*) ; 
 int BITS_PER_LONG ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct mt76_wcid* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct mt76_dev *dev)
{
	struct mt76_wcid *wcid;
	int i, j, min_rssi = 0;
	s8 cur_rssi;

	FUNC2();
	FUNC5();

	for (i = 0; i < FUNC0(dev->wcid_mask); i++) {
		unsigned long mask = dev->wcid_mask[i];

		if (!mask)
			continue;

		for (j = i * BITS_PER_LONG; mask; j++, mask >>= 1) {
			if (!(mask & 1))
				continue;

			wcid = FUNC4(dev->wcid[j]);
			if (!wcid)
				continue;

			FUNC7(&dev->rx_lock);
			if (wcid->inactive_count++ < 5)
				cur_rssi = -FUNC1(&wcid->rssi);
			else
				cur_rssi = 0;
			FUNC8(&dev->rx_lock);

			if (cur_rssi < min_rssi)
				min_rssi = cur_rssi;
		}
	}

	FUNC6();
	FUNC3();

	return min_rssi;
}