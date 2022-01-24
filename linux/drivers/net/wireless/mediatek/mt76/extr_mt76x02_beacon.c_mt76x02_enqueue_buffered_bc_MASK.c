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
struct mt76x02_dev {int dummy; } ;
struct beacon_bc_data {int /*<<< orphan*/ * tail; int /*<<< orphan*/  q; struct mt76x02_dev* dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IEEE80211_IFACE_ITER_RESUME_ALL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct beacon_bc_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mt76x02_add_buffered_bc ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(struct mt76x02_dev *dev,
			    struct beacon_bc_data *data,
			    int max_nframes)
{
	int i, nframes;

	data->dev = dev;
	FUNC1(&data->q);

	do {
		nframes = FUNC5(&data->q);
		FUNC2(FUNC3(dev),
			IEEE80211_IFACE_ITER_RESUME_ALL,
			mt76x02_add_buffered_bc, data);
	} while (nframes != FUNC5(&data->q) &&
		 FUNC5(&data->q) < max_nframes);

	if (!FUNC5(&data->q))
		return;

	for (i = 0; i < FUNC0(data->tail); i++) {
		if (!data->tail[i])
			continue;
		FUNC4(data->tail[i], false);
	}
}