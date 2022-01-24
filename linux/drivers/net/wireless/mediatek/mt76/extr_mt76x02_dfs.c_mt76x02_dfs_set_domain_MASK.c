#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mt76x02_dfs_pattern_detector {int /*<<< orphan*/  dfs_tasklet; } ;
struct TYPE_2__ {int region; int /*<<< orphan*/  mutex; } ;
struct mt76x02_dev {int ed_monitor; TYPE_1__ mt76; scalar_t__ ed_monitor_enabled; struct mt76x02_dfs_pattern_detector dfs_pd; } ;
typedef  enum nl80211_dfs_regions { ____Placeholder_nl80211_dfs_regions } nl80211_dfs_regions ;

/* Variables and functions */
 int NL80211_DFS_ETSI ; 
 int /*<<< orphan*/  FUNC0 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct mt76x02_dev *dev,
		       enum nl80211_dfs_regions region)
{
	struct mt76x02_dfs_pattern_detector *dfs_pd = &dev->dfs_pd;

	FUNC2(&dev->mt76.mutex);
	if (dev->mt76.region != region) {
		FUNC4(&dfs_pd->dfs_tasklet);

		dev->ed_monitor = dev->ed_monitor_enabled &&
				  region == NL80211_DFS_ETSI;
		FUNC1(dev);

		dev->mt76.region = region;
		FUNC0(dev);
		FUNC5(&dfs_pd->dfs_tasklet);
	}
	FUNC3(&dev->mt76.mutex);
}