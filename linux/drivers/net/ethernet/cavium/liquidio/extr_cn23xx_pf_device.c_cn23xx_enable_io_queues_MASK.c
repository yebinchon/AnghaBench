#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  scalar_t__ u32 ;
struct TYPE_6__ {int iq64B; int iq; int oq; } ;
struct TYPE_4__ {scalar_t__ pf_srn; } ;
struct octeon_device {scalar_t__ num_iqs; TYPE_3__ io_qmask; TYPE_2__* pci_dev; TYPE_1__ sriov_info; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int CN23XX_PKT_INPUT_CTL_IS_64B ; 
 int CN23XX_PKT_INPUT_CTL_QUIET ; 
 int CN23XX_PKT_INPUT_CTL_RING_ENB ; 
 int CN23XX_PKT_INPUT_CTL_RST ; 
 scalar_t__ CN23XX_PKT_OUTPUT_CTL_RING_ENB ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 scalar_t__ FUNC4 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct octeon_device*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct octeon_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct octeon_device *oct)
{
	u64 reg_val;
	u32 srn, ern, q_no;
	u32 loop = 1000;

	srn = oct->sriov_info.pf_srn;
	ern = srn + oct->num_iqs;

	for (q_no = srn; q_no < ern; q_no++) {
		/* set the corresponding IQ IS_64B bit */
		if (oct->io_qmask.iq64B & FUNC0(q_no - srn)) {
			reg_val = FUNC5(
			    oct, FUNC1(q_no));
			reg_val = reg_val | CN23XX_PKT_INPUT_CTL_IS_64B;
			FUNC7(
			    oct, FUNC1(q_no), reg_val);
		}

		/* set the corresponding IQ ENB bit */
		if (oct->io_qmask.iq & FUNC0(q_no - srn)) {
			/* IOQs are in reset by default in PEM2 mode,
			 * clearing reset bit
			 */
			reg_val = FUNC5(
			    oct, FUNC1(q_no));

			if (reg_val & CN23XX_PKT_INPUT_CTL_RST) {
				while ((reg_val & CN23XX_PKT_INPUT_CTL_RST) &&
				       !(reg_val &
					 CN23XX_PKT_INPUT_CTL_QUIET) &&
				       --loop) {
					reg_val = FUNC5(
					    oct,
					    FUNC1(q_no));
				}
				if (!loop) {
					FUNC3(&oct->pci_dev->dev,
						"clearing the reset reg failed or setting the quiet reg failed for qno: %u\n",
						q_no);
					return -1;
				}
				reg_val = reg_val & ~CN23XX_PKT_INPUT_CTL_RST;
				FUNC7(
				    oct, FUNC1(q_no),
				    reg_val);

				reg_val = FUNC5(
				    oct, FUNC1(q_no));
				if (reg_val & CN23XX_PKT_INPUT_CTL_RST) {
					FUNC3(&oct->pci_dev->dev,
						"clearing the reset failed for qno: %u\n",
						q_no);
					return -1;
				}
			}
			reg_val = FUNC5(
			    oct, FUNC1(q_no));
			reg_val = reg_val | CN23XX_PKT_INPUT_CTL_RING_ENB;
			FUNC7(
			    oct, FUNC1(q_no), reg_val);
		}
	}
	for (q_no = srn; q_no < ern; q_no++) {
		u32 reg_val;
		/* set the corresponding OQ ENB bit */
		if (oct->io_qmask.oq & FUNC0(q_no - srn)) {
			reg_val = FUNC4(
			    oct, FUNC2(q_no));
			reg_val = reg_val | CN23XX_PKT_OUTPUT_CTL_RING_ENB;
			FUNC6(oct, FUNC2(q_no),
					 reg_val);
		}
	}
	return 0;
}