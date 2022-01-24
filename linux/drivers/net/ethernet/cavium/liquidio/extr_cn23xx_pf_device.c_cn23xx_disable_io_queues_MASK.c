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
typedef  int u32 ;
struct TYPE_2__ {int pf_srn; } ;
struct octeon_device {int num_iqs; TYPE_1__ sriov_info; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int CN23XX_PKT_INPUT_CTL_RING_ENB ; 
 int CN23XX_PKT_INPUT_CTL_RST ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  CN23XX_SLI_PKT_IOQ_RING_RST ; 
 int HZ ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int FUNC7 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct octeon_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct octeon_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static void FUNC12(struct octeon_device *oct)
{
	int q_no, loop;
	u64 d64;
	u32 d32;
	u32 srn, ern;

	srn = oct->sriov_info.pf_srn;
	ern = srn + oct->num_iqs;

	/*** Disable Input Queues. ***/
	for (q_no = srn; q_no < ern; q_no++) {
		loop = HZ;

		/* start the Reset for a particular ring */
		FUNC6(d64, FUNC8(
			   oct, FUNC2(q_no)));
		FUNC6(d64, FUNC5(d64) &
					(~(CN23XX_PKT_INPUT_CTL_RING_ENB)));
		FUNC6(d64, FUNC5(d64) | CN23XX_PKT_INPUT_CTL_RST);
		FUNC10(oct, FUNC2(q_no),
				   FUNC5(d64));

		/* Wait until hardware indicates that the particular IQ
		 * is out of reset.
		 */
		FUNC6(d64, FUNC8(
					oct, CN23XX_SLI_PKT_IOQ_RING_RST));
		while (!(FUNC5(d64) & FUNC0(q_no)) && loop--) {
			FUNC6(d64, FUNC8(
					oct, CN23XX_SLI_PKT_IOQ_RING_RST));
			FUNC11(1);
		}

		/* Reset the doorbell register for this Input Queue. */
		FUNC9(oct, FUNC1(q_no), 0xFFFFFFFF);
		while (FUNC8(oct, FUNC1(q_no)) &&
		       loop--) {
			FUNC11(1);
		}
	}

	/*** Disable Output Queues. ***/
	for (q_no = srn; q_no < ern; q_no++) {
		loop = HZ;

		/* Wait until hardware indicates that the particular IQ
		 * is out of reset.It given that SLI_PKT_RING_RST is
		 * common for both IQs and OQs
		 */
		FUNC6(d64, FUNC8(
					oct, CN23XX_SLI_PKT_IOQ_RING_RST));
		while (!(FUNC5(d64) & FUNC0(q_no)) && loop--) {
			FUNC6(d64, FUNC8(
					oct, CN23XX_SLI_PKT_IOQ_RING_RST));
			FUNC11(1);
		}

		/* Reset the doorbell register for this Output Queue. */
		FUNC9(oct, FUNC3(q_no),
				 0xFFFFFFFF);
		while (FUNC8(oct,
					 FUNC3(q_no)) &&
		       loop--) {
			FUNC11(1);
		}

		/* clear the SLI_PKT(0..63)_CNTS[CNT] reg value */
		FUNC6(d32, FUNC7(
					oct, FUNC4(q_no)));
		FUNC9(oct, FUNC4(q_no),
				 FUNC5(d32));
	}
}