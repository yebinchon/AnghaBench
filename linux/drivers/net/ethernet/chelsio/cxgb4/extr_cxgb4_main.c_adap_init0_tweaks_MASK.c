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
struct adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSUM_HAS_PSEUDO_HDR_F ; 
 int /*<<< orphan*/  L1_CACHE_BYTES ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int PKTSHIFT_M ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SGE_CONTROL_A ; 
 int /*<<< orphan*/  TP_INGRESS_CONFIG_A ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int rx_dma_offset ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct adapter *adapter)
{
	/*
	 * Fix up various Host-Dependent Parameters like Page Size, Cache
	 * Line Size, etc.  The firmware default is for a 4KB Page Size and
	 * 64B Cache Line Size ...
	 */
	FUNC2(adapter, PAGE_SIZE, L1_CACHE_BYTES);

	/*
	 * Process module parameters which affect early initialization.
	 */
	if (rx_dma_offset != 2 && rx_dma_offset != 0) {
		FUNC1(&adapter->pdev->dev,
			"Ignoring illegal rx_dma_offset=%d, using 2\n",
			rx_dma_offset);
		rx_dma_offset = 2;
	}
	FUNC3(adapter, SGE_CONTROL_A,
			 FUNC0(PKTSHIFT_M),
			 FUNC0(rx_dma_offset));

	/*
	 * Don't include the "IP Pseudo Header" in CPL_RX_PKT checksums: Linux
	 * adds the pseudo header itself.
	 */
	FUNC4(adapter, TP_INGRESS_CONFIG_A,
			       CSUM_HAS_PSEUDO_HDR_F, 0);

	return 0;
}