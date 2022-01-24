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
struct mt7603_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ MT7603_REV_E2 ; 
 int /*<<< orphan*/  MT_BMAP_0 ; 
 int /*<<< orphan*/  MT_BMAP_1 ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  MT_HIGH_PRIORITY_1 ; 
 int /*<<< orphan*/  MT_HIGH_PRIORITY_2 ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  MT_PRIORITY_MASK ; 
 int /*<<< orphan*/  MT_PSE_FC_P0 ; 
 int /*<<< orphan*/  MT_PSE_FC_P0_MAX_QUOTA ; 
 int /*<<< orphan*/  MT_PSE_FRP ; 
 int /*<<< orphan*/  MT_PSE_FRP_P0 ; 
 int /*<<< orphan*/  MT_PSE_FRP_P1 ; 
 int /*<<< orphan*/  MT_PSE_FRP_P2_RQ2 ; 
 int /*<<< orphan*/  MT_QUEUE_PRIORITY_1 ; 
 int /*<<< orphan*/  MT_QUEUE_PRIORITY_2 ; 
 int /*<<< orphan*/  MT_RSV_MAX_THRESH ; 
 int /*<<< orphan*/  MT_SCH_1 ; 
 int /*<<< orphan*/  MT_SCH_2 ; 
 int /*<<< orphan*/  MT_SCH_4 ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (struct mt7603_dev*) ; 
 int FUNC6 (struct mt7603_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mt7603_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mt7603_dev*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (struct mt7603_dev*) ; 

__attribute__((used)) static void
FUNC10(struct mt7603_dev *dev)
{
	int page_size = 128;
	int page_count;
	int max_len = 1792;
	int max_amsdu_pages = 4096 / page_size;
	int max_mcu_len = 4096;
	int max_beacon_len = 512 * 4 + max_len;
	int max_mcast_pages = 4 * max_len / page_size;
	int reserved_count = 0;
	int beacon_pages;
	int mcu_pages;
	int i;

	page_count = FUNC6(dev, MT_PSE_FC_P0,
				    MT_PSE_FC_P0_MAX_QUOTA);
	beacon_pages = 4 * (max_beacon_len / page_size);
	mcu_pages = max_mcu_len / page_size;

	FUNC8(dev, MT_PSE_FRP,
		FUNC1(MT_PSE_FRP_P0, 7) |
		FUNC1(MT_PSE_FRP_P1, 6) |
		FUNC1(MT_PSE_FRP_P2_RQ2, 4));

	FUNC8(dev, MT_HIGH_PRIORITY_1, 0x55555553);
	FUNC8(dev, MT_HIGH_PRIORITY_2, 0x78555555);

	FUNC8(dev, MT_QUEUE_PRIORITY_1, 0x2b1a096e);
	FUNC8(dev, MT_QUEUE_PRIORITY_2, 0x785f4d3c);

	FUNC8(dev, MT_PRIORITY_MASK, 0xffffffff);

	FUNC8(dev, MT_SCH_1, page_count | (2 << 28));
	FUNC8(dev, MT_SCH_2, max_amsdu_pages);

	for (i = 0; i <= 4; i++)
		FUNC8(dev, FUNC3(i), max_amsdu_pages);
	reserved_count += 5 * max_amsdu_pages;

	FUNC8(dev, FUNC3(5), mcu_pages);
	reserved_count += mcu_pages;

	FUNC8(dev, FUNC3(7), beacon_pages);
	reserved_count += beacon_pages;

	FUNC8(dev, FUNC3(8), max_mcast_pages);
	reserved_count += max_mcast_pages;

	if (FUNC5(dev))
		reserved_count = 0;

	FUNC8(dev, MT_RSV_MAX_THRESH, page_count - reserved_count);

	if (FUNC5(dev) && FUNC9(dev) >= MT7603_REV_E2) {
		FUNC8(dev, FUNC2(0),
			page_count - beacon_pages - mcu_pages);
		FUNC8(dev, FUNC2(1), beacon_pages);
		FUNC8(dev, MT_BMAP_0, 0x0080ff5f);
		FUNC8(dev, FUNC2(2), mcu_pages);
		FUNC8(dev, MT_BMAP_1, 0x00000020);
	} else {
		FUNC8(dev, FUNC2(0), page_count);
		FUNC8(dev, MT_BMAP_0, 0xffff);
	}

	FUNC8(dev, MT_SCH_4, 0);

	for (i = 0; i <= 15; i++)
		FUNC8(dev, FUNC4(i), 0xfffff);

	FUNC7(dev, MT_SCH_4, FUNC0(6));
}