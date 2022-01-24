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
struct mt76x02_dfs_pattern_detector {scalar_t__ last_event_ts; } ;
struct mt76x02_dfs_event {scalar_t__ ts; } ;
struct mt76x02_dev {struct mt76x02_dfs_pattern_detector dfs_pd; } ;

/* Variables and functions */
 int MT_DFS_EVENT_LOOP ; 
 int FUNC0 (struct mt76x02_dev*,struct mt76x02_dfs_event*) ; 
 int /*<<< orphan*/  FUNC1 (struct mt76x02_dev*,struct mt76x02_dfs_event*) ; 
 int /*<<< orphan*/  FUNC2 (struct mt76x02_dev*,struct mt76x02_dfs_event*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct mt76x02_dev*,struct mt76x02_dfs_event*) ; 
 int /*<<< orphan*/  FUNC5 (struct mt76x02_dev*,struct mt76x02_dfs_event*) ; 
 int /*<<< orphan*/  FUNC6 (struct mt76x02_dev*,int) ; 

__attribute__((used)) static void FUNC7(struct mt76x02_dev *dev)
{
	struct mt76x02_dfs_pattern_detector *dfs_pd = &dev->dfs_pd;
	struct mt76x02_dfs_event event;
	int i, seq_len;

	/* disable debug mode */
	FUNC6(dev, false);
	for (i = 0; i < MT_DFS_EVENT_LOOP; i++) {
		if (!FUNC4(dev, &event))
			break;

		if (dfs_pd->last_event_ts > event.ts)
			FUNC3(dev);
		dfs_pd->last_event_ts = event.ts;

		if (!FUNC1(dev, &event))
			continue;

		seq_len = FUNC0(dev, &event);
		FUNC2(dev, &event, seq_len);

		FUNC5(dev, &event);
	}
	FUNC6(dev, true);
}