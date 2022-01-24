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
struct vf610_nfc {int /*<<< orphan*/  dev; int /*<<< orphan*/  cmd_done; } ;

/* Variables and functions */
 int /*<<< orphan*/  IDLE_EN_BIT ; 
 int /*<<< orphan*/  NFC_FLASH_CMD2 ; 
 int /*<<< orphan*/  NFC_IRQ_STATUS ; 
 int /*<<< orphan*/  START_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 unsigned long FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct vf610_nfc*) ; 
 int /*<<< orphan*/  FUNC3 (struct vf610_nfc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct vf610_nfc *nfc)
{
	unsigned long timeout = FUNC1(100);

	/*
	 * Barrier is needed after this write. This write need
	 * to be done before reading the next register the first
	 * time.
	 * vf610_nfc_set implicates such a barrier by using writel
	 * to write to the register.
	 */
	FUNC3(nfc, NFC_IRQ_STATUS, IDLE_EN_BIT);
	FUNC3(nfc, NFC_FLASH_CMD2, START_BIT);

	if (!FUNC4(&nfc->cmd_done, timeout))
		FUNC0(nfc->dev, "Timeout while waiting for BUSY.\n");

	FUNC2(nfc);
}