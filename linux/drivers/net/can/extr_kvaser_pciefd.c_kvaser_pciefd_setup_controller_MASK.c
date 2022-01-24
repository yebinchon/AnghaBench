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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int ctrlmode; } ;
struct kvaser_pciefd_can {int /*<<< orphan*/  lock; scalar_t__ reg_base; TYPE_1__ can; } ;

/* Variables and functions */
 int CAN_CTRLMODE_FD ; 
 int CAN_CTRLMODE_FD_NON_ISO ; 
 int CAN_CTRLMODE_LISTENONLY ; 
 int /*<<< orphan*/  KVASER_PCIEFD_KCAN_MODE_APT ; 
 int /*<<< orphan*/  KVASER_PCIEFD_KCAN_MODE_CCM ; 
 int /*<<< orphan*/  KVASER_PCIEFD_KCAN_MODE_EEN ; 
 int /*<<< orphan*/  KVASER_PCIEFD_KCAN_MODE_EPEN ; 
 int /*<<< orphan*/  KVASER_PCIEFD_KCAN_MODE_LOM ; 
 int /*<<< orphan*/  KVASER_PCIEFD_KCAN_MODE_NIFDEN ; 
 scalar_t__ KVASER_PCIEFD_KCAN_MODE_REG ; 
 int /*<<< orphan*/  KVASER_PCIEFD_KCAN_MODE_RM ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct kvaser_pciefd_can *can)
{
	u32 mode;
	unsigned long irq;

	FUNC2(&can->lock, irq);

	mode = FUNC0(can->reg_base + KVASER_PCIEFD_KCAN_MODE_REG);
	if (can->can.ctrlmode & CAN_CTRLMODE_FD) {
		mode &= ~KVASER_PCIEFD_KCAN_MODE_CCM;
		if (can->can.ctrlmode & CAN_CTRLMODE_FD_NON_ISO)
			mode |= KVASER_PCIEFD_KCAN_MODE_NIFDEN;
		else
			mode &= ~KVASER_PCIEFD_KCAN_MODE_NIFDEN;
	} else {
		mode |= KVASER_PCIEFD_KCAN_MODE_CCM;
		mode &= ~KVASER_PCIEFD_KCAN_MODE_NIFDEN;
	}

	if (can->can.ctrlmode & CAN_CTRLMODE_LISTENONLY)
		mode |= KVASER_PCIEFD_KCAN_MODE_LOM;

	mode |= KVASER_PCIEFD_KCAN_MODE_EEN;
	mode |= KVASER_PCIEFD_KCAN_MODE_EPEN;
	/* Use ACK packet type */
	mode &= ~KVASER_PCIEFD_KCAN_MODE_APT;
	mode &= ~KVASER_PCIEFD_KCAN_MODE_RM;
	FUNC1(mode, can->reg_base + KVASER_PCIEFD_KCAN_MODE_REG);

	FUNC3(&can->lock, irq);
}