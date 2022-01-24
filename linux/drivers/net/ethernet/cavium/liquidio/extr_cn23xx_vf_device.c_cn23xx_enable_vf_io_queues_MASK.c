#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;
struct TYPE_2__ {int iq64B; int iq; int oq; } ;
struct octeon_device {scalar_t__ num_iqs; scalar_t__ num_oqs; TYPE_1__ io_qmask; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  CN23XX_PKT_INPUT_CTL_IS_64B ; 
 int /*<<< orphan*/  CN23XX_PKT_INPUT_CTL_RING_ENB ; 
 scalar_t__ CN23XX_PKT_OUTPUT_CTL_RING_ENB ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct octeon_device*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct octeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct octeon_device *oct)
{
	u32 q_no;

	for (q_no = 0; q_no < oct->num_iqs; q_no++) {
		u64 reg_val;

		/* set the corresponding IQ IS_64B bit */
		if (oct->io_qmask.iq64B & FUNC0(q_no)) {
			reg_val = FUNC4(
			    oct, FUNC1(q_no));
			reg_val |= CN23XX_PKT_INPUT_CTL_IS_64B;
			FUNC6(
			    oct, FUNC1(q_no), reg_val);
		}

		/* set the corresponding IQ ENB bit */
		if (oct->io_qmask.iq & FUNC0(q_no)) {
			reg_val = FUNC4(
			    oct, FUNC1(q_no));
			reg_val |= CN23XX_PKT_INPUT_CTL_RING_ENB;
			FUNC6(
			    oct, FUNC1(q_no), reg_val);
		}
	}
	for (q_no = 0; q_no < oct->num_oqs; q_no++) {
		u32 reg_val;

		/* set the corresponding OQ ENB bit */
		if (oct->io_qmask.oq & FUNC0(q_no)) {
			reg_val = FUNC3(
			    oct, FUNC2(q_no));
			reg_val |= CN23XX_PKT_OUTPUT_CTL_RING_ENB;
			FUNC5(
			    oct, FUNC2(q_no), reg_val);
		}
	}

	return 0;
}