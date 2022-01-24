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
typedef  int u64 ;
typedef  scalar_t__ u32 ;
struct octeon_device {TYPE_1__* pci_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ BUSY_READING_REG_VF_LOOP_COUNT ; 
 int CN23XX_PKT_INPUT_CTL_QUIET ; 
 int CN23XX_PKT_INPUT_CTL_RST ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int FUNC4 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct octeon_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct octeon_device *oct, u32 num_queues)
{
	u32 loop = BUSY_READING_REG_VF_LOOP_COUNT;
	int ret_val = 0;
	u32 q_no;
	u64 d64;

	for (q_no = 0; q_no < num_queues; q_no++) {
		/* set RST bit to 1. This bit applies to both IQ and OQ */
		d64 = FUNC4(oct,
					FUNC0(q_no));
		d64 |= CN23XX_PKT_INPUT_CTL_RST;
		FUNC5(oct, FUNC0(q_no),
				   d64);
	}

	/* wait until the RST bit is clear or the RST and QUIET bits are set */
	for (q_no = 0; q_no < num_queues; q_no++) {
		u64 reg_val = FUNC4(oct,
					FUNC0(q_no));
		while ((FUNC1(reg_val) & CN23XX_PKT_INPUT_CTL_RST) &&
		       !(FUNC1(reg_val) & CN23XX_PKT_INPUT_CTL_QUIET) &&
		       loop) {
			FUNC2(reg_val, FUNC4(
			    oct, FUNC0(q_no)));
			loop--;
		}
		if (!loop) {
			FUNC3(&oct->pci_dev->dev,
				"clearing the reset reg failed or setting the quiet reg failed for qno: %u\n",
				q_no);
			return -1;
		}
		FUNC2(reg_val, FUNC1(reg_val) &
			   ~CN23XX_PKT_INPUT_CTL_RST);
		FUNC5(oct, FUNC0(q_no),
				   FUNC1(reg_val));

		FUNC2(reg_val, FUNC4(
		    oct, FUNC0(q_no)));
		if (FUNC1(reg_val) & CN23XX_PKT_INPUT_CTL_RST) {
			FUNC3(&oct->pci_dev->dev,
				"clearing the reset failed for qno: %u\n",
				q_no);
			ret_val = -1;
		}
	}

	return ret_val;
}