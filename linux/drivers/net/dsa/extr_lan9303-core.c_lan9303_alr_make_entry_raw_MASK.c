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
struct lan9303 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALR_STS_MAKE_PEND ; 
 int /*<<< orphan*/  LAN9303_ALR_CMD_MAKE_ENTRY ; 
 int /*<<< orphan*/  LAN9303_SWE_ALR_CMD ; 
 int /*<<< orphan*/  LAN9303_SWE_ALR_CMD_STS ; 
 int /*<<< orphan*/  LAN9303_SWE_ALR_WR_DAT_0 ; 
 int /*<<< orphan*/  LAN9303_SWE_ALR_WR_DAT_1 ; 
 int /*<<< orphan*/  FUNC0 (struct lan9303*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lan9303*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct lan9303 *chip, u32 dat0, u32 dat1)
{
	FUNC1(chip, LAN9303_SWE_ALR_WR_DAT_0, dat0);
	FUNC1(chip, LAN9303_SWE_ALR_WR_DAT_1, dat1);
	FUNC1(chip, LAN9303_SWE_ALR_CMD,
				 LAN9303_ALR_CMD_MAKE_ENTRY);
	FUNC0(chip, LAN9303_SWE_ALR_CMD_STS, ALR_STS_MAKE_PEND);
	FUNC1(chip, LAN9303_SWE_ALR_CMD, 0);

	return 0;
}