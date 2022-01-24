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
struct rtsx_pcr {int /*<<< orphan*/  sd30_drive_sel_3v3; } ;

/* Variables and functions */
 int CD_AUTO_DISABLE ; 
 int CD_DISABLE_MASK ; 
 int /*<<< orphan*/  CD_ENABLE ; 
 int /*<<< orphan*/  CD_PAD_CTL ; 
 int /*<<< orphan*/  SD30_DRIVE_SEL ; 
 int /*<<< orphan*/  WRITE_REG_CMD ; 
 int /*<<< orphan*/  FUNC0 (struct rtsx_pcr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_pcr*) ; 
 int FUNC2 (struct rtsx_pcr*,int) ; 

__attribute__((used)) static int FUNC3(struct rtsx_pcr *pcr)
{
	FUNC1(pcr);

	FUNC0(pcr, WRITE_REG_CMD, SD30_DRIVE_SEL,
			0xFF, pcr->sd30_drive_sel_3v3);
	FUNC0(pcr, WRITE_REG_CMD, CD_PAD_CTL,
			CD_DISABLE_MASK | CD_AUTO_DISABLE, CD_ENABLE);

	return FUNC2(pcr, 100);
}