#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct mt76x02_dfs_pattern_detector {TYPE_1__* stats; scalar_t__ last_sw_check; } ;
struct mt76x02_dfs_hw_pulse {int engine; } ;
struct TYPE_4__ {int /*<<< orphan*/  hw; int /*<<< orphan*/  state; } ;
struct mt76x02_dev {TYPE_2__ mt76; struct mt76x02_dfs_pattern_detector dfs_pd; } ;
struct TYPE_3__ {int /*<<< orphan*/  hw_pattern; int /*<<< orphan*/  hw_pulse_discarded; } ;

/* Variables and functions */
 int /*<<< orphan*/  DFS ; 
 int /*<<< orphan*/  MT76_SCANNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int MT_DFS_NUM_ENGINES ; 
 scalar_t__ MT_DFS_SW_TIMEOUT ; 
 int /*<<< orphan*/  MT_INT_GPTIMER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int FUNC2 (struct mt76x02_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mt76x02_dev*) ; 
 int FUNC5 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct mt76x02_dev*,struct mt76x02_dfs_hw_pulse*) ; 
 int /*<<< orphan*/  FUNC8 (struct mt76x02_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct mt76x02_dev*,struct mt76x02_dfs_hw_pulse*) ; 
 int /*<<< orphan*/  FUNC10 (struct mt76x02_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 

__attribute__((used)) static void FUNC13(unsigned long arg)
{
	struct mt76x02_dev *dev = (struct mt76x02_dev *)arg;
	struct mt76x02_dfs_pattern_detector *dfs_pd = &dev->dfs_pd;
	u32 engine_mask;
	int i;

	if (FUNC11(MT76_SCANNING, &dev->mt76.state))
		goto out;

	if (FUNC12(dfs_pd->last_sw_check +
				   MT_DFS_SW_TIMEOUT)) {
		bool radar_detected;

		dfs_pd->last_sw_check = jiffies;

		FUNC4(dev);
		radar_detected = FUNC5(dev);
		if (radar_detected) {
			/* sw detector rx radar pattern */
			FUNC1(dev->mt76.hw);
			FUNC8(dev);

			return;
		}
		FUNC6(dev);
	}

	engine_mask = FUNC2(dev, FUNC0(DFS, 1));
	if (!(engine_mask & 0xf))
		goto out;

	for (i = 0; i < MT_DFS_NUM_ENGINES; i++) {
		struct mt76x02_dfs_hw_pulse pulse;

		if (!(engine_mask & (1 << i)))
			continue;

		pulse.engine = i;
		FUNC9(dev, &pulse);

		if (!FUNC7(dev, &pulse)) {
			dfs_pd->stats[i].hw_pulse_discarded++;
			continue;
		}

		/* hw detector rx radar pattern */
		dfs_pd->stats[i].hw_pattern++;
		FUNC1(dev->mt76.hw);
		FUNC8(dev);

		return;
	}

	/* reset hw detector */
	FUNC3(dev, FUNC0(DFS, 1), 0xf);

out:
	FUNC10(dev, MT_INT_GPTIMER);
}