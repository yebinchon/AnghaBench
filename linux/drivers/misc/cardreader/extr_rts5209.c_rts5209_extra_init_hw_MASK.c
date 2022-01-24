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
struct rtsx_pcr {int sd30_drive_sel_3v3; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASPM_FORCE_CTL ; 
 int /*<<< orphan*/  CARD_GPIO ; 
 int /*<<< orphan*/  CARD_GPIO_DIR ; 
 int /*<<< orphan*/  PETXCFG ; 
 int /*<<< orphan*/  SD30_DRIVE_SEL ; 
 int /*<<< orphan*/  WRITE_REG_CMD ; 
 int /*<<< orphan*/  FUNC0 (struct rtsx_pcr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_pcr*) ; 
 int FUNC2 (struct rtsx_pcr*,int) ; 

__attribute__((used)) static int FUNC3(struct rtsx_pcr *pcr)
{
	FUNC1(pcr);

	/* Turn off LED */
	FUNC0(pcr, WRITE_REG_CMD, CARD_GPIO, 0xFF, 0x03);
	/* Reset ASPM state to default value */
	FUNC0(pcr, WRITE_REG_CMD, ASPM_FORCE_CTL, 0x3F, 0);
	/* Force CLKREQ# PIN to drive 0 to request clock */
	FUNC0(pcr, WRITE_REG_CMD, PETXCFG, 0x08, 0x08);
	/* Configure GPIO as output */
	FUNC0(pcr, WRITE_REG_CMD, CARD_GPIO_DIR, 0xFF, 0x03);
	/* Configure driving */
	FUNC0(pcr, WRITE_REG_CMD, SD30_DRIVE_SEL,
			0xFF, pcr->sd30_drive_sel_3v3);

	return FUNC2(pcr, 100);
}