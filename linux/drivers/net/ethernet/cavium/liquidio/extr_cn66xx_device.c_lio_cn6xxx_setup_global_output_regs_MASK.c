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
struct octeon_device {int pcie_port; scalar_t__ chip; } ;
struct octeon_cn6xxx {int /*<<< orphan*/  conf; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CN6XXX_SLI_OQ_INT_LEVEL_PKTS ; 
 int /*<<< orphan*/  CN6XXX_SLI_OQ_INT_LEVEL_TIME ; 
 int /*<<< orphan*/  CN6XXX_SLI_OQ_WMARK ; 
 int /*<<< orphan*/  CN6XXX_SLI_PKT_DATA_OUT_ES64 ; 
 int /*<<< orphan*/  CN6XXX_SLI_PKT_DATA_OUT_NS ; 
 int /*<<< orphan*/  CN6XXX_SLI_PKT_DATA_OUT_ROR ; 
 int /*<<< orphan*/  CN6XXX_SLI_PKT_DPADDR ; 
 int /*<<< orphan*/  CN6XXX_SLI_PKT_OUT_BMODE ; 
 int /*<<< orphan*/  CN6XXX_SLI_PKT_PCIE_PORT64 ; 
 int /*<<< orphan*/  CN6XXX_SLI_PKT_SLIST_ES64 ; 
 int /*<<< orphan*/  CN6XXX_SLI_PKT_SLIST_NS ; 
 int /*<<< orphan*/  CN6XXX_SLI_PKT_SLIST_ROR ; 
 int FUNC3 (struct octeon_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct octeon_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct octeon_device*,int /*<<< orphan*/ ,int) ; 

void FUNC6(struct octeon_device *oct)
{
	u32 time_threshold;
	struct octeon_cn6xxx *cn6xxx = (struct octeon_cn6xxx *)oct->chip;

	/* / Select PCI-E Port for all Output queues */
	FUNC5(oct, CN6XXX_SLI_PKT_PCIE_PORT64,
			   (oct->pcie_port * 0x5555555555555555ULL));

	if (FUNC0(cn6xxx->conf)) {
		FUNC5(oct, CN6XXX_SLI_OQ_WMARK, 32);
	} else {
		/* / Set Output queue watermark to 0 to disable backpressure */
		FUNC5(oct, CN6XXX_SLI_OQ_WMARK, 0);
	}

	/* / Select Packet count instead of bytes for SLI_PKTi_CNTS[CNT] */
	FUNC4(oct, CN6XXX_SLI_PKT_OUT_BMODE, 0);

	/* Select ES, RO, NS setting from register for Output Queue Packet
	 * Address
	 */
	FUNC4(oct, CN6XXX_SLI_PKT_DPADDR, 0xFFFFFFFF);

	/* No Relaxed Ordering, No Snoop, 64-bit swap for Output
	 * Queue ScatterList
	 */
	FUNC4(oct, CN6XXX_SLI_PKT_SLIST_ROR, 0);
	FUNC4(oct, CN6XXX_SLI_PKT_SLIST_NS, 0);

	/* / ENDIAN_SPECIFIC CHANGES - 0 works for LE. */
#ifdef __BIG_ENDIAN_BITFIELD
	octeon_write_csr64(oct, CN6XXX_SLI_PKT_SLIST_ES64,
			   0x5555555555555555ULL);
#else
	FUNC5(oct, CN6XXX_SLI_PKT_SLIST_ES64, 0ULL);
#endif

	/* / No Relaxed Ordering, No Snoop, 64-bit swap for Output Queue Data */
	FUNC4(oct, CN6XXX_SLI_PKT_DATA_OUT_ROR, 0);
	FUNC4(oct, CN6XXX_SLI_PKT_DATA_OUT_NS, 0);
	FUNC5(oct, CN6XXX_SLI_PKT_DATA_OUT_ES64,
			   0x5555555555555555ULL);

	/* / Set up interrupt packet and time threshold */
	FUNC4(oct, CN6XXX_SLI_OQ_INT_LEVEL_PKTS,
			 (u32)FUNC1(cn6xxx->conf));
	time_threshold =
		FUNC3(oct, (u32)
					FUNC2(cn6xxx->conf));

	FUNC4(oct, CN6XXX_SLI_OQ_INT_LEVEL_TIME, time_threshold);
}