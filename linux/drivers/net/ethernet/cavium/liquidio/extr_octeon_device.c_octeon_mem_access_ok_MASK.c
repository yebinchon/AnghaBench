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
typedef  int u64 ;
struct octeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CN23XX_LMC0_RESET_CTL ; 
 int CN23XX_LMC0_RESET_CTL_DDR3RST_MASK ; 
 int /*<<< orphan*/  CN6XXX_LMC0_RESET_CTL ; 
 int CN6XXX_LMC0_RESET_CTL_DDR3RST_MASK ; 
 scalar_t__ FUNC0 (struct octeon_device*) ; 
 int FUNC1 (struct octeon_device*,int /*<<< orphan*/ ) ; 

int FUNC2(struct octeon_device *oct)
{
	u64 access_okay = 0;
	u64 lmc0_reset_ctl;

	/* Check to make sure a DDR interface is enabled */
	if (FUNC0(oct)) {
		lmc0_reset_ctl = FUNC1(oct, CN23XX_LMC0_RESET_CTL);
		access_okay =
			(lmc0_reset_ctl & CN23XX_LMC0_RESET_CTL_DDR3RST_MASK);
	} else {
		lmc0_reset_ctl = FUNC1(oct, CN6XXX_LMC0_RESET_CTL);
		access_okay =
			(lmc0_reset_ctl & CN6XXX_LMC0_RESET_CTL_DDR3RST_MASK);
	}

	return access_okay ? 0 : 1;
}