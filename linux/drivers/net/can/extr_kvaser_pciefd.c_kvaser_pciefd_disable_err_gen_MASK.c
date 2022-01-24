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
typedef  int /*<<< orphan*/  u32 ;
struct kvaser_pciefd_can {int /*<<< orphan*/  lock; scalar_t__ reg_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  KVASER_PCIEFD_KCAN_MODE_EPEN ; 
 scalar_t__ KVASER_PCIEFD_KCAN_MODE_REG ; 
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
	mode &= ~KVASER_PCIEFD_KCAN_MODE_EPEN;
	FUNC1(mode, can->reg_base + KVASER_PCIEFD_KCAN_MODE_REG);
	FUNC3(&can->lock, irq);
}