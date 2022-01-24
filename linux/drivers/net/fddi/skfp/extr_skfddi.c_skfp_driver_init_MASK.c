#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ a; } ;
struct TYPE_6__ {TYPE_1__ fddi_canon_addr; int /*<<< orphan*/  irq; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;
struct TYPE_8__ {scalar_t__ SharedMemSize; int /*<<< orphan*/ * LocalRxBuffer; int /*<<< orphan*/  LocalRxBufferDMA; TYPE_3__ pdev; int /*<<< orphan*/ * SharedMemAddr; int /*<<< orphan*/  SharedMemDMA; scalar_t__ SharedMemHeap; int /*<<< orphan*/  DriverLock; int /*<<< orphan*/  base_addr; } ;
struct s_smc {TYPE_2__ hw; TYPE_4__ os; } ;
struct net_device {int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  irq; int /*<<< orphan*/  base_addr; } ;
typedef  TYPE_4__ skfddi_priv ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ MAX_FRAME_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct s_smc*) ; 
 void* FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (struct s_smc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 struct s_smc* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct s_smc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct s_smc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static  int FUNC12(struct net_device *dev)
{
	struct s_smc *smc = FUNC6(dev);
	skfddi_priv *bp = &smc->os;
	int err = -EIO;

	FUNC7("entering skfp_driver_init\n");

	// set the io address in private structures
	bp->base_addr = dev->base_addr;

	// Get the interrupt level from the PCI Configuration Table
	smc->hw.irq = dev->irq;

	FUNC11(&bp->DriverLock);
	
	// Allocate invalid frame
	bp->LocalRxBuffer = FUNC1(&bp->pdev.dev, MAX_FRAME_SIZE,
					       &bp->LocalRxBufferDMA,
					       GFP_ATOMIC);
	if (!bp->LocalRxBuffer) {
		FUNC8("could not allocate mem for ");
		FUNC8("LocalRxBuffer: %d byte\n", MAX_FRAME_SIZE);
		goto fail;
	}

	// Determine the required size of the 'shared' memory area.
	bp->SharedMemSize = FUNC3();
	FUNC7("Memory for HWM: %ld\n", bp->SharedMemSize);
	if (bp->SharedMemSize > 0) {
		bp->SharedMemSize += 16;	// for descriptor alignment

		bp->SharedMemAddr = FUNC1(&bp->pdev.dev,
						       bp->SharedMemSize,
						       &bp->SharedMemDMA,
						       GFP_ATOMIC);
		if (!bp->SharedMemAddr) {
			FUNC8("could not allocate mem for ");
			FUNC8("hardware module: %ld byte\n",
			       bp->SharedMemSize);
			goto fail;
		}

	} else {
		bp->SharedMemAddr = NULL;
	}

	bp->SharedMemHeap = 0;

	FUNC0(smc);		// Reset adapter.

	FUNC7("mac_drv_init()..\n");
	if (FUNC4(smc) != 0) {
		FUNC7("mac_drv_init() failed\n");
		goto fail;
	}
	FUNC9(smc, NULL);
	FUNC7("HW-Addr: %pMF\n", smc->hw.fddi_canon_addr.a);
	FUNC5(dev->dev_addr, smc->hw.fddi_canon_addr.a, ETH_ALEN);

	FUNC10(smc, 0);

	return 0;

fail:
	if (bp->SharedMemAddr) {
		FUNC2(&bp->pdev.dev,
				  bp->SharedMemSize,
				  bp->SharedMemAddr,
				  bp->SharedMemDMA);
		bp->SharedMemAddr = NULL;
	}
	if (bp->LocalRxBuffer) {
		FUNC2(&bp->pdev.dev, MAX_FRAME_SIZE,
				  bp->LocalRxBuffer, bp->LocalRxBufferDMA);
		bp->LocalRxBuffer = NULL;
	}
	return err;
}