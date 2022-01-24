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
struct can_bittiming {int phase_seg2; int prop_seg; int phase_seg1; int sjw; int brp; } ;
struct TYPE_2__ {struct can_bittiming bittiming; struct can_bittiming data_bittiming; } ;
struct kvaser_pciefd_can {int /*<<< orphan*/  lock; scalar_t__ reg_base; TYPE_1__ can; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ KVASER_PCIEFD_KCAN_BTRD_REG ; 
 scalar_t__ KVASER_PCIEFD_KCAN_BTRN_REG ; 
 int KVASER_PCIEFD_KCAN_BTRN_SJW_SHIFT ; 
 int KVASER_PCIEFD_KCAN_BTRN_TSEG1_SHIFT ; 
 int KVASER_PCIEFD_KCAN_BTRN_TSEG2_SHIFT ; 
 scalar_t__ KVASER_PCIEFD_KCAN_MODE_REG ; 
 int KVASER_PCIEFD_KCAN_MODE_RM ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int FUNC2 (scalar_t__,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct kvaser_pciefd_can *can, bool data)
{
	u32 mode, test, btrn;
	unsigned long irq_flags;
	int ret;
	struct can_bittiming *bt;

	if (data)
		bt = &can->can.data_bittiming;
	else
		bt = &can->can.bittiming;

	btrn = ((bt->phase_seg2 - 1) & 0x1f) <<
	       KVASER_PCIEFD_KCAN_BTRN_TSEG2_SHIFT |
	       (((bt->prop_seg + bt->phase_seg1) - 1) & 0x1ff) <<
	       KVASER_PCIEFD_KCAN_BTRN_TSEG1_SHIFT |
	       ((bt->sjw - 1) & 0xf) << KVASER_PCIEFD_KCAN_BTRN_SJW_SHIFT |
	       ((bt->brp - 1) & 0x1fff);

	FUNC3(&can->lock, irq_flags);
	mode = FUNC0(can->reg_base + KVASER_PCIEFD_KCAN_MODE_REG);

	/* Put the circuit in reset mode */
	FUNC1(mode | KVASER_PCIEFD_KCAN_MODE_RM,
		  can->reg_base + KVASER_PCIEFD_KCAN_MODE_REG);

	/* Can only set bittiming if in reset mode */
	ret = FUNC2(can->reg_base + KVASER_PCIEFD_KCAN_MODE_REG,
				 test, test & KVASER_PCIEFD_KCAN_MODE_RM,
				 0, 10);

	if (ret) {
		FUNC4(&can->lock, irq_flags);
		return -EBUSY;
	}

	if (data)
		FUNC1(btrn, can->reg_base + KVASER_PCIEFD_KCAN_BTRD_REG);
	else
		FUNC1(btrn, can->reg_base + KVASER_PCIEFD_KCAN_BTRN_REG);

	/* Restore previous reset mode status */
	FUNC1(mode, can->reg_base + KVASER_PCIEFD_KCAN_MODE_REG);

	FUNC4(&can->lock, irq_flags);
	return 0;
}