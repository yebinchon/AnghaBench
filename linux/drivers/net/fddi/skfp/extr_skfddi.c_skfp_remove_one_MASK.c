#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  iop; } ;
struct TYPE_3__ {int /*<<< orphan*/ * LocalRxBuffer; int /*<<< orphan*/  LocalRxBufferDMA; int /*<<< orphan*/ * SharedMemAddr; int /*<<< orphan*/  SharedMemDMA; int /*<<< orphan*/  SharedMemSize; } ;
struct s_smc {TYPE_2__ hw; TYPE_1__ os; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_FRAME_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct s_smc* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 struct net_device* FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 

__attribute__((used)) static void FUNC9(struct pci_dev *pdev)
{
	struct net_device *p = FUNC6(pdev);
	struct s_smc *lp = FUNC4(p);

	FUNC8(p);

	if (lp->os.SharedMemAddr) {
		FUNC0(&pdev->dev,
				  lp->os.SharedMemSize,
				  lp->os.SharedMemAddr,
				  lp->os.SharedMemDMA);
		lp->os.SharedMemAddr = NULL;
	}
	if (lp->os.LocalRxBuffer) {
		FUNC0(&pdev->dev,
				  MAX_FRAME_SIZE,
				  lp->os.LocalRxBuffer,
				  lp->os.LocalRxBufferDMA);
		lp->os.LocalRxBuffer = NULL;
	}
#ifdef MEM_MAPPED_IO
	iounmap(lp->hw.iop);
#else
	FUNC2(lp->hw.iop);
#endif
	FUNC7(pdev);
	FUNC1(p);

	FUNC5(pdev);
}