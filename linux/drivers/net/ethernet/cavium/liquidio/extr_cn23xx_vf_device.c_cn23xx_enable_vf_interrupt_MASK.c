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
typedef  int u64 ;
typedef  scalar_t__ u32 ;
struct octeon_device {scalar_t__ num_oqs; scalar_t__ chip; } ;
struct octeon_cn23xx_vf {int /*<<< orphan*/  conf; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int CN23XX_INTR_CINT_ENB ; 
 int CN23XX_INTR_MBOX_ENB ; 
 int CN23XX_PKT_IN_DONE_CNT_MASK ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int OCTEON_INPUT_INTR ; 
 int OCTEON_MBOX_INTR ; 
 int OCTEON_OUTPUT_INTR ; 
 scalar_t__ FUNC5 (struct octeon_device*,scalar_t__) ; 
 int FUNC6 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct octeon_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(struct octeon_device *oct, u8 intr_flag)
{
	struct octeon_cn23xx_vf *cn23xx = (struct octeon_cn23xx_vf *)oct->chip;
	u32 q_no, time_threshold;

	if (intr_flag & OCTEON_OUTPUT_INTR) {
		for (q_no = 0; q_no < oct->num_oqs; q_no++) {
			/* Set up interrupt packet and time thresholds
			 * for all the OQs
			 */
			time_threshold = FUNC5(
				oct, (u32)FUNC1(cn23xx->conf));

			FUNC7(
			    oct, FUNC3(q_no),
			    (FUNC0(cn23xx->conf) |
			     ((u64)time_threshold << 32)));
		}
	}

	if (intr_flag & OCTEON_INPUT_INTR) {
		for (q_no = 0; q_no < oct->num_oqs; q_no++) {
			/* Set CINT_ENB to enable IQ interrupt */
			FUNC7(
			    oct, FUNC2(q_no),
			    ((FUNC6(
				  oct, FUNC2(q_no)) &
			      ~CN23XX_PKT_IN_DONE_CNT_MASK) |
			     CN23XX_INTR_CINT_ENB));
		}
	}

	/* Set queue-0 MBOX_ENB to enable VF mailbox interrupt */
	if (intr_flag & OCTEON_MBOX_INTR) {
		FUNC7(
		    oct, FUNC4(0),
		    (FUNC6(oct, FUNC4(0)) |
		     CN23XX_INTR_MBOX_ENB));
	}
}