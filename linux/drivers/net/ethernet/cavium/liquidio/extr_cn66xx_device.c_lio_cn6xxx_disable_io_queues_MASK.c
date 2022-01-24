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
typedef  int u32 ;
struct TYPE_2__ {int iq; int oq; } ;
struct octeon_device {TYPE_1__ io_qmask; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  CN6XXX_SLI_PKT_CNT_INT ; 
 int /*<<< orphan*/  CN6XXX_SLI_PKT_INSTR_ENB ; 
 int /*<<< orphan*/  CN6XXX_SLI_PKT_OUT_ENB ; 
 int /*<<< orphan*/  CN6XXX_SLI_PKT_TIME_INT ; 
 int /*<<< orphan*/  CN6XXX_SLI_PORT_IN_RST_IQ ; 
 int /*<<< orphan*/  CN6XXX_SLI_PORT_IN_RST_OQ ; 
 int HZ ; 
 int FUNC4 (struct octeon_device*) ; 
 int FUNC5 (struct octeon_device*) ; 
 int FUNC6 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct octeon_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

void FUNC9(struct octeon_device *oct)
{
	int i;
	u32 mask, loop = HZ;
	u32 d32;

	/* Reset the Enable bits for Input Queues. */
	mask = FUNC6(oct, CN6XXX_SLI_PKT_INSTR_ENB);
	mask ^= oct->io_qmask.iq;
	FUNC7(oct, CN6XXX_SLI_PKT_INSTR_ENB, mask);

	/* Wait until hardware indicates that the queues are out of reset. */
	mask = (u32)oct->io_qmask.iq;
	d32 = FUNC6(oct, CN6XXX_SLI_PORT_IN_RST_IQ);
	while (((d32 & mask) != mask) && loop--) {
		d32 = FUNC6(oct, CN6XXX_SLI_PORT_IN_RST_IQ);
		FUNC8(1);
	}

	/* Reset the doorbell register for each Input queue. */
	for (i = 0; i < FUNC4(oct); i++) {
		if (!(oct->io_qmask.iq & FUNC0(i)))
			continue;
		FUNC7(oct, FUNC1(i), 0xFFFFFFFF);
		d32 = FUNC6(oct, FUNC1(i));
	}

	/* Reset the Enable bits for Output Queues. */
	mask = FUNC6(oct, CN6XXX_SLI_PKT_OUT_ENB);
	mask ^= oct->io_qmask.oq;
	FUNC7(oct, CN6XXX_SLI_PKT_OUT_ENB, mask);

	/* Wait until hardware indicates that the queues are out of reset. */
	loop = HZ;
	mask = (u32)oct->io_qmask.oq;
	d32 = FUNC6(oct, CN6XXX_SLI_PORT_IN_RST_OQ);
	while (((d32 & mask) != mask) && loop--) {
		d32 = FUNC6(oct, CN6XXX_SLI_PORT_IN_RST_OQ);
		FUNC8(1);
	}
	;

	/* Reset the doorbell register for each Output queue. */
	for (i = 0; i < FUNC5(oct); i++) {
		if (!(oct->io_qmask.oq & FUNC0(i)))
			continue;
		FUNC7(oct, FUNC2(i), 0xFFFFFFFF);
		d32 = FUNC6(oct, FUNC2(i));

		d32 = FUNC6(oct, FUNC3(i));
		FUNC7(oct, FUNC3(i), d32);
	}

	d32 = FUNC6(oct, CN6XXX_SLI_PKT_CNT_INT);
	if (d32)
		FUNC7(oct, CN6XXX_SLI_PKT_CNT_INT, d32);

	d32 = FUNC6(oct, CN6XXX_SLI_PKT_TIME_INT);
	if (d32)
		FUNC7(oct, CN6XXX_SLI_PKT_TIME_INT, d32);
}