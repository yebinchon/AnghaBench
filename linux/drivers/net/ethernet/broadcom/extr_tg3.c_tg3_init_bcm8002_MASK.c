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
struct tg3 {int dummy; } ;

/* Variables and functions */
 int BMCR_RESET ; 
 int /*<<< orphan*/  INIT_COMPLETE ; 
 int /*<<< orphan*/  MAC_STATUS ; 
 int MAC_STATUS_PCS_SYNCED ; 
 int MII_BMCR ; 
 scalar_t__ FUNC0 (struct tg3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tg3*,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct tg3 *tp)
{
	u32 mac_status = FUNC2(MAC_STATUS);
	int i;

	/* Reset when initting first time or we have a link. */
	if (FUNC0(tp, INIT_COMPLETE) &&
	    !(mac_status & MAC_STATUS_PCS_SYNCED))
		return;

	/* Set PLL lock range. */
	FUNC1(tp, 0x16, 0x8007);

	/* SW reset */
	FUNC1(tp, MII_BMCR, BMCR_RESET);

	/* Wait for reset to complete. */
	/* XXX schedule_timeout() ... */
	for (i = 0; i < 500; i++)
		FUNC3(10);

	/* Config mode; select PMA/Ch 1 regs. */
	FUNC1(tp, 0x10, 0x8411);

	/* Enable auto-lock and comdet, select txclk for tx. */
	FUNC1(tp, 0x11, 0x0a10);

	FUNC1(tp, 0x18, 0x00a0);
	FUNC1(tp, 0x16, 0x41ff);

	/* Assert and deassert POR. */
	FUNC1(tp, 0x13, 0x0400);
	FUNC3(40);
	FUNC1(tp, 0x13, 0x0000);

	FUNC1(tp, 0x11, 0x0a50);
	FUNC3(40);
	FUNC1(tp, 0x11, 0x0a10);

	/* Wait for signal to stabilize */
	/* XXX schedule_timeout() ... */
	for (i = 0; i < 15000; i++)
		FUNC3(10);

	/* Deselect the channel register so we can read the PHYID
	 * later.
	 */
	FUNC1(tp, 0x10, 0x8011);
}