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
typedef  scalar_t__ u32 ;
struct mt7603_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int MT_PSE_PAGE_SIZE ; 
 scalar_t__ MT_WTBL1_BASE ; 
 int /*<<< orphan*/  MT_WTBL1_OR ; 
 int /*<<< orphan*/  MT_WTBL1_OR_PSM_WRITE ; 
 int MT_WTBL1_SIZE ; 
 int MT_WTBL1_W0_RX_CHECK_A1 ; 
 int MT_WTBL1_W0_RX_CHECK_A2 ; 
 int MT_WTBL1_W0_RX_VALID ; 
 int MT_WTBL1_W3_I_PSM ; 
 int MT_WTBL1_W3_KEEP_I_PSM ; 
 int /*<<< orphan*/  MT_WTBL1_W3_WTBL2_ENTRY_ID ; 
 int /*<<< orphan*/  MT_WTBL1_W3_WTBL2_FRAME_ID ; 
 int /*<<< orphan*/  MT_WTBL1_W3_WTBL4_FRAME_ID ; 
 int /*<<< orphan*/  MT_WTBL1_W4_WTBL3_ENTRY_ID ; 
 int /*<<< orphan*/  MT_WTBL1_W4_WTBL3_FRAME_ID ; 
 int /*<<< orphan*/  MT_WTBL1_W4_WTBL4_ENTRY_ID ; 
 int MT_WTBL2_SIZE ; 
 int MT_WTBL3_OFFSET ; 
 int MT_WTBL3_SIZE ; 
 int MT_WTBL4_OFFSET ; 
 int MT_WTBL4_SIZE ; 
 int /*<<< orphan*/  MT_WTBL_UPDATE ; 
 int /*<<< orphan*/  MT_WTBL_UPDATE_ADM_COUNT_CLEAR ; 
 int /*<<< orphan*/  MT_WTBL_UPDATE_BUSY ; 
 int /*<<< orphan*/  MT_WTBL_UPDATE_RX_COUNT_CLEAR ; 
 int /*<<< orphan*/  MT_WTBL_UPDATE_TX_COUNT_CLEAR ; 
 int /*<<< orphan*/  MT_WTBL_UPDATE_WTBL2 ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct mt7603_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mt7603_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mt7603_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mt7603_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mt7603_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mt7603_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mt7603_dev*,scalar_t__,int) ; 

void FUNC10(struct mt7603_dev *dev, int idx)
{
	int wtbl2_frame_size = MT_PSE_PAGE_SIZE / MT_WTBL2_SIZE;
	int wtbl2_frame = idx / wtbl2_frame_size;
	int wtbl2_entry = idx % wtbl2_frame_size;

	int wtbl3_base_frame = MT_WTBL3_OFFSET / MT_PSE_PAGE_SIZE;
	int wtbl3_frame_size = MT_PSE_PAGE_SIZE / MT_WTBL3_SIZE;
	int wtbl3_frame = wtbl3_base_frame + idx / wtbl3_frame_size;
	int wtbl3_entry = (idx % wtbl3_frame_size) * 2;

	int wtbl4_base_frame = MT_WTBL4_OFFSET / MT_PSE_PAGE_SIZE;
	int wtbl4_frame_size = MT_PSE_PAGE_SIZE / MT_WTBL4_SIZE;
	int wtbl4_frame = wtbl4_base_frame + idx / wtbl4_frame_size;
	int wtbl4_entry = idx % wtbl4_frame_size;

	u32 addr = MT_WTBL1_BASE + idx * MT_WTBL1_SIZE;
	int i;

	FUNC5(dev, MT_WTBL_UPDATE, MT_WTBL_UPDATE_BUSY, 0, 5000);

	FUNC9(dev, addr + 0 * 4,
		MT_WTBL1_W0_RX_CHECK_A1 |
		MT_WTBL1_W0_RX_CHECK_A2 |
		MT_WTBL1_W0_RX_VALID);
	FUNC9(dev, addr + 1 * 4, 0);
	FUNC9(dev, addr + 2 * 4, 0);

	FUNC6(dev, MT_WTBL1_OR, MT_WTBL1_OR_PSM_WRITE);

	FUNC9(dev, addr + 3 * 4,
		FUNC0(MT_WTBL1_W3_WTBL2_FRAME_ID, wtbl2_frame) |
		FUNC0(MT_WTBL1_W3_WTBL2_ENTRY_ID, wtbl2_entry) |
		FUNC0(MT_WTBL1_W3_WTBL4_FRAME_ID, wtbl4_frame) |
		MT_WTBL1_W3_I_PSM | MT_WTBL1_W3_KEEP_I_PSM);
	FUNC9(dev, addr + 4 * 4,
		FUNC0(MT_WTBL1_W4_WTBL3_FRAME_ID, wtbl3_frame) |
		FUNC0(MT_WTBL1_W4_WTBL3_ENTRY_ID, wtbl3_entry) |
		FUNC0(MT_WTBL1_W4_WTBL4_ENTRY_ID, wtbl4_entry));

	FUNC4(dev, MT_WTBL1_OR, MT_WTBL1_OR_PSM_WRITE);

	addr = FUNC2(idx);

	/* Clear BA information */
	FUNC9(dev, addr + (15 * 4), 0);

	FUNC8(dev, FUNC1(3, 0));
	for (i = 2; i <= 4; i++)
		FUNC9(dev, addr + (i * 4), 0);
	FUNC3(dev, idx, MT_WTBL_UPDATE_WTBL2);
	FUNC7(dev, FUNC1(3, 0));

	FUNC3(dev, idx, MT_WTBL_UPDATE_RX_COUNT_CLEAR);
	FUNC3(dev, idx, MT_WTBL_UPDATE_TX_COUNT_CLEAR);
	FUNC3(dev, idx, MT_WTBL_UPDATE_ADM_COUNT_CLEAR);
}