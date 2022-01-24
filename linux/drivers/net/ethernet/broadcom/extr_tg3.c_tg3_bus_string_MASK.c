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
 int /*<<< orphan*/  GRC_MISC_CFG ; 
 int GRC_MISC_CFG_BOARD_ID_5704CIOBE ; 
 int GRC_MISC_CFG_BOARD_ID_MASK ; 
 int /*<<< orphan*/  PCIX_MODE ; 
 int /*<<< orphan*/  PCI_32BIT ; 
 int /*<<< orphan*/  PCI_EXPRESS ; 
 int /*<<< orphan*/  PCI_HIGH_SPEED ; 
 int /*<<< orphan*/  TG3PCI_CLOCK_CTRL ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (struct tg3*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *FUNC4(struct tg3 *tp, char *str)
{
	if (FUNC2(tp, PCI_EXPRESS)) {
		FUNC1(str, "PCI Express");
		return str;
	} else if (FUNC2(tp, PCIX_MODE)) {
		u32 clock_ctrl = FUNC3(TG3PCI_CLOCK_CTRL) & 0x1f;

		FUNC1(str, "PCIX:");

		if ((clock_ctrl == 7) ||
		    ((FUNC3(GRC_MISC_CFG) & GRC_MISC_CFG_BOARD_ID_MASK) ==
		     GRC_MISC_CFG_BOARD_ID_5704CIOBE))
			FUNC0(str, "133MHz");
		else if (clock_ctrl == 0)
			FUNC0(str, "33MHz");
		else if (clock_ctrl == 2)
			FUNC0(str, "50MHz");
		else if (clock_ctrl == 4)
			FUNC0(str, "66MHz");
		else if (clock_ctrl == 6)
			FUNC0(str, "100MHz");
	} else {
		FUNC1(str, "PCI:");
		if (FUNC2(tp, PCI_HIGH_SPEED))
			FUNC0(str, "66MHz");
		else
			FUNC0(str, "33MHz");
	}
	if (FUNC2(tp, PCI_32BIT))
		FUNC0(str, ":32-bit");
	else
		FUNC0(str, ":64-bit");
	return str;
}