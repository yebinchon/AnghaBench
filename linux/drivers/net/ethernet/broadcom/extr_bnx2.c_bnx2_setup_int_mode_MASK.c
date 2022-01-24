#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct bnx2 {int num_req_rx_rings; int num_req_tx_rings; int irq_nvecs; int flags; int num_rx_rings; TYPE_3__* dev; void* num_tx_rings; TYPE_2__* pdev; TYPE_1__* irq_tbl; } ;
struct TYPE_7__ {int /*<<< orphan*/  name; } ;
struct TYPE_6__ {int /*<<< orphan*/  irq; } ;
struct TYPE_5__ {int /*<<< orphan*/  vector; int /*<<< orphan*/  handler; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bnx2*) ; 
 scalar_t__ BNX2_CHIP_5709 ; 
 int BNX2_FLAG_MSIX_CAP ; 
 int BNX2_FLAG_MSI_CAP ; 
 int BNX2_FLAG_ONE_SHOT_MSI ; 
 int BNX2_FLAG_USING_MSI ; 
 int BNX2_FLAG_USING_MSIX ; 
 int RX_MAX_RINGS ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2*,int) ; 
 int /*<<< orphan*/  bnx2_interrupt ; 
 int /*<<< orphan*/  bnx2_msi ; 
 int /*<<< orphan*/  bnx2_msi_1shot ; 
 int FUNC2 (int,int) ; 
 void* FUNC3 (int,int) ; 
 int FUNC4 () ; 
 int FUNC5 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,void*) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 void* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(struct bnx2 *bp, int dis_msi)
{
	int cpus = FUNC4();
	int msix_vecs;

	if (!bp->num_req_rx_rings)
		msix_vecs = FUNC2(cpus + 1, bp->num_req_tx_rings);
	else if (!bp->num_req_tx_rings)
		msix_vecs = FUNC2(cpus, bp->num_req_rx_rings);
	else
		msix_vecs = FUNC2(bp->num_req_rx_rings, bp->num_req_tx_rings);

	msix_vecs = FUNC3(msix_vecs, RX_MAX_RINGS);

	bp->irq_tbl[0].handler = bnx2_interrupt;
	FUNC9(bp->irq_tbl[0].name, bp->dev->name);
	bp->irq_nvecs = 1;
	bp->irq_tbl[0].vector = bp->pdev->irq;

	if ((bp->flags & BNX2_FLAG_MSIX_CAP) && !dis_msi)
		FUNC1(bp, msix_vecs);

	if ((bp->flags & BNX2_FLAG_MSI_CAP) && !dis_msi &&
	    !(bp->flags & BNX2_FLAG_USING_MSIX)) {
		if (FUNC7(bp->pdev) == 0) {
			bp->flags |= BNX2_FLAG_USING_MSI;
			if (FUNC0(bp) == BNX2_CHIP_5709) {
				bp->flags |= BNX2_FLAG_ONE_SHOT_MSI;
				bp->irq_tbl[0].handler = bnx2_msi_1shot;
			} else
				bp->irq_tbl[0].handler = bnx2_msi;

			bp->irq_tbl[0].vector = bp->pdev->irq;
		}
	}

	if (!bp->num_req_tx_rings)
		bp->num_tx_rings = FUNC8(bp->irq_nvecs);
	else
		bp->num_tx_rings = FUNC3(bp->irq_nvecs, bp->num_req_tx_rings);

	if (!bp->num_req_rx_rings)
		bp->num_rx_rings = bp->irq_nvecs;
	else
		bp->num_rx_rings = FUNC3(bp->irq_nvecs, bp->num_req_rx_rings);

	FUNC6(bp->dev, bp->num_tx_rings);

	return FUNC5(bp->dev, bp->num_rx_rings);
}