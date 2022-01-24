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
struct octeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CN23XX_INPUT_JABBER ; 
 int /*<<< orphan*/  CN23XX_SLI_PKT_IN_JABBER ; 
 int /*<<< orphan*/  CN23XX_SLI_WINDOW_CTL ; 
 int /*<<< orphan*/  CN23XX_SLI_WINDOW_CTL_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (struct octeon_device*) ; 
 scalar_t__ FUNC1 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct octeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct octeon_device *oct)
{
	FUNC0(oct);

	/* program the MAC(0..3)_RINFO before setting up input/output regs */
	FUNC3(oct);

	if (FUNC1(oct))
		return -1;

	FUNC2(oct);

	/* Default error timeout value should be 0x200000 to avoid host hang
	 * when reads invalid register
	 */
	FUNC4(oct, CN23XX_SLI_WINDOW_CTL,
			   CN23XX_SLI_WINDOW_CTL_DEFAULT);

	/* set SLI_PKT_IN_JABBER to handle large VXLAN packets */
	FUNC4(oct, CN23XX_SLI_PKT_IN_JABBER, CN23XX_INPUT_JABBER);
	return 0;
}