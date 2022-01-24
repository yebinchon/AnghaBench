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
struct tg3 {scalar_t__ write32_tx_mbox; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MBOX_WRITE_REORDER ; 
 int /*<<< orphan*/  TX_RECOVERY_PENDING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (struct tg3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tg3*,int /*<<< orphan*/ ) ; 
 scalar_t__ tg3_write_indirect_mbox ; 

__attribute__((used)) static void FUNC4(struct tg3 *tp)
{
	FUNC0(FUNC2(tp, MBOX_WRITE_REORDER) ||
	       tp->write32_tx_mbox == tg3_write_indirect_mbox);

	FUNC1(tp->dev,
		    "The system may be re-ordering memory-mapped I/O "
		    "cycles to the network device, attempting to recover. "
		    "Please report the problem to the driver maintainer "
		    "and include system chipset information.\n");

	FUNC3(tp, TX_RECOVERY_PENDING);
}