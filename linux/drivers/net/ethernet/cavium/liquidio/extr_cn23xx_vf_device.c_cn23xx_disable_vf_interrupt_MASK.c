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
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct octeon_device {scalar_t__ num_oqs; } ;

/* Variables and functions */
 int CN23XX_INTR_CINT_ENB ; 
 int CN23XX_INTR_MBOX_ENB ; 
 int CN23XX_PKT_IN_DONE_CNT_MASK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int OCTEON_INPUT_INTR ; 
 int OCTEON_MBOX_INTR ; 
 int OCTEON_OUTPUT_INTR ; 
 int FUNC3 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct octeon_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct octeon_device *oct, u8 intr_flag)
{
	u32 q_no;

	if (intr_flag & OCTEON_OUTPUT_INTR) {
		for (q_no = 0; q_no < oct->num_oqs; q_no++) {
			/* Write all 1's in INT_LEVEL reg to disable PO_INT */
			FUNC4(
			    oct, FUNC1(q_no),
			    0x3fffffffffffff);
		}
	}
	if (intr_flag & OCTEON_INPUT_INTR) {
		for (q_no = 0; q_no < oct->num_oqs; q_no++) {
			FUNC4(
			    oct, FUNC0(q_no),
			    (FUNC3(
				 oct, FUNC0(q_no)) &
			     ~(CN23XX_INTR_CINT_ENB |
			       CN23XX_PKT_IN_DONE_CNT_MASK)));
		}
	}

	if (intr_flag & OCTEON_MBOX_INTR) {
		FUNC4(
		    oct, FUNC2(0),
		    (FUNC3(oct, FUNC2(0)) &
		     ~CN23XX_INTR_MBOX_ENB));
	}
}