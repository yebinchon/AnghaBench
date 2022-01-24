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
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_2__ {int region; int /*<<< orphan*/  mutex; } ;
struct mt76x02_dev {int ed_monitor_enabled; int ed_monitor; TYPE_1__ mt76; } ;
typedef  enum nl80211_dfs_regions { ____Placeholder_nl80211_dfs_regions } nl80211_dfs_regions ;

/* Variables and functions */
 int NL80211_DFS_ETSI ; 
 int /*<<< orphan*/  FUNC0 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(void *data, u64 val)
{
	struct mt76x02_dev *dev = data;
	enum nl80211_dfs_regions region = dev->mt76.region;

	FUNC1(&dev->mt76.mutex);

	dev->ed_monitor_enabled = !!val;
	dev->ed_monitor = dev->ed_monitor_enabled &&
			  region == NL80211_DFS_ETSI;
	FUNC0(dev);

	FUNC2(&dev->mt76.mutex);

	return 0;
}