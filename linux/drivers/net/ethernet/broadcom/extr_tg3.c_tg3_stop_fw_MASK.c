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
struct tg3 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENABLE_APE ; 
 int /*<<< orphan*/  ENABLE_ASF ; 
 int /*<<< orphan*/  FWCMD_NICDRV_PAUSE_FW ; 
 int /*<<< orphan*/  NIC_SRAM_FW_CMD_MBOX ; 
 scalar_t__ FUNC0 (struct tg3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tg3*) ; 
 int /*<<< orphan*/  FUNC2 (struct tg3*) ; 
 int /*<<< orphan*/  FUNC3 (struct tg3*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct tg3 *tp)
{
	if (FUNC0(tp, ENABLE_ASF) && !FUNC0(tp, ENABLE_APE)) {
		/* Wait for RX cpu to ACK the previous event. */
		FUNC2(tp);

		FUNC3(tp, NIC_SRAM_FW_CMD_MBOX, FWCMD_NICDRV_PAUSE_FW);

		FUNC1(tp);

		/* Wait for RX cpu to ACK this event. */
		FUNC2(tp);
	}
}