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
struct mt7603_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  MT_WTBL2_W15_BA_EN_TIDS ; 
 int MT_WTBL2_W15_BA_WIN_SIZE ; 
 int MT_WTBL2_W15_BA_WIN_SIZE_SHIFT ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct mt7603_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mt7603_dev*,int,int,int) ; 

void FUNC6(struct mt7603_dev *dev, int wcid, int tid,
			    int ba_size)
{
	u32 addr = FUNC3(wcid);
	u32 tid_mask = FUNC1(MT_WTBL2_W15_BA_EN_TIDS, FUNC0(tid)) |
		       (MT_WTBL2_W15_BA_WIN_SIZE <<
			(tid * MT_WTBL2_W15_BA_WIN_SIZE_SHIFT));
	u32 tid_val;
	int i;

	if (ba_size < 0) {
		/* disable */
		FUNC4(dev, addr + (15 * 4), tid_mask);
		return;
	}

	for (i = 7; i > 0; i--) {
		if (ba_size >= FUNC2(i))
			break;
	}

	tid_val = FUNC1(MT_WTBL2_W15_BA_EN_TIDS, FUNC0(tid)) |
		  i << (tid * MT_WTBL2_W15_BA_WIN_SIZE_SHIFT);

	FUNC5(dev, addr + (15 * 4), tid_mask, tid_val);
}