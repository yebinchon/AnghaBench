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
struct octeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CN6XXX_SLI_PKT_OUT_ENB ; 
 scalar_t__ FUNC0 (struct octeon_device*) ; 
 int FUNC1 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct octeon_device*,int /*<<< orphan*/ ,int) ; 

void FUNC3(struct octeon_device *oct,
			    u32 q_no,
			    u32 enable)
{
	u32 reg_val = 0;

	/* Disable the i/p and o/p queues for this Octeon. */
	if (FUNC0(oct)) {
		reg_val = FUNC1(oct, CN6XXX_SLI_PKT_OUT_ENB);

		if (enable)
			reg_val = reg_val | (1 << q_no);
		else
			reg_val = reg_val & (~(1 << q_no));

		FUNC2(oct, CN6XXX_SLI_PKT_OUT_ENB, reg_val);
	}
}