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
typedef  int u32 ;
struct mt76x02_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AGC ; 
 int /*<<< orphan*/  DFS ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MT_BBP_AGC_LNA_HIGH_GAIN ; 
 int MT_DFS_CH_EN ; 
 scalar_t__ FUNC2 (struct mt76x02_dev*) ; 
 int FUNC3 (struct mt76x02_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 

void FUNC5(struct mt76x02_dev *dev)
{
	u32 agc_r8, agc_r4, val_r8, val_r4, dfs_r31;

	agc_r8 = FUNC3(dev, FUNC1(AGC, 8));
	agc_r4 = FUNC3(dev, FUNC1(AGC, 4));

	val_r8 = (agc_r8 & 0x00007e00) >> 9;
	val_r4 = agc_r4 & ~0x1f000000;
	val_r4 += (((val_r8 + 1) >> 1) << 24);
	FUNC4(dev, FUNC1(AGC, 4), val_r4);

	dfs_r31 = FUNC0(MT_BBP_AGC_LNA_HIGH_GAIN, val_r4);
	dfs_r31 += val_r8;
	dfs_r31 -= (agc_r8 & 0x00000038) >> 3;
	dfs_r31 = (dfs_r31 << 16) | 0x00000307;
	FUNC4(dev, FUNC1(DFS, 31), dfs_r31);

	if (FUNC2(dev)) {
		FUNC4(dev, FUNC1(DFS, 32), 0x00040071);
	} else {
		/* disable hw detector */
		FUNC4(dev, FUNC1(DFS, 0), 0);
		/* enable hw detector */
		FUNC4(dev, FUNC1(DFS, 0), MT_DFS_CH_EN << 16);
	}
}