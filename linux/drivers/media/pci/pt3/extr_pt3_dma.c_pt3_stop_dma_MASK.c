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
typedef  int u32 ;
struct pt3_board {int* regs; } ;
struct TYPE_2__ {struct pt3_board* priv; } ;
struct pt3_adapter {int /*<<< orphan*/  adap_idx; TYPE_1__ dvb_adap; } ;

/* Variables and functions */
 int EIO ; 
 int OFST_DMA_CTL ; 
 int OFST_STATUS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

int FUNC4(struct pt3_adapter *adap)
{
	struct pt3_board *pt3 = adap->dvb_adap.priv;
	u32 base;
	u32 stat;
	int retry;

	base = FUNC0(adap->adap_idx);
	stat = FUNC1(pt3->regs[0] + base + OFST_STATUS);
	if (!(stat & 0x01))
		return 0;

	FUNC2(0x02, pt3->regs[0] + base + OFST_DMA_CTL);
	for (retry = 0; retry < 5; retry++) {
		stat = FUNC1(pt3->regs[0] + base + OFST_STATUS);
		if (!(stat & 0x01))
			return 0;
		FUNC3(50);
	}
	return -EIO;
}