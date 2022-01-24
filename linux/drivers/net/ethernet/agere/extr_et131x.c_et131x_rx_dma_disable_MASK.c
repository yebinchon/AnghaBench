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
typedef  int u32 ;
struct et131x_adapter {TYPE_1__* pdev; TYPE_3__* regs; } ;
struct TYPE_5__ {int /*<<< orphan*/  csr; } ;
struct TYPE_6__ {TYPE_2__ rxdma; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ET_RXDMA_CSR_FBR1_ENABLE ; 
 int ET_RXDMA_CSR_HALT ; 
 int ET_RXDMA_CSR_HALT_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct et131x_adapter *adapter)
{
	u32 csr;
	/* Setup the receive dma configuration register */
	FUNC3(ET_RXDMA_CSR_HALT | ET_RXDMA_CSR_FBR1_ENABLE,
	       &adapter->regs->rxdma.csr);
	csr = FUNC1(&adapter->regs->rxdma.csr);
	if (!(csr & ET_RXDMA_CSR_HALT_STATUS)) {
		FUNC2(5);
		csr = FUNC1(&adapter->regs->rxdma.csr);
		if (!(csr & ET_RXDMA_CSR_HALT_STATUS))
			FUNC0(&adapter->pdev->dev,
				"RX Dma failed to enter halt state. CSR 0x%08x\n",
				csr);
	}
}