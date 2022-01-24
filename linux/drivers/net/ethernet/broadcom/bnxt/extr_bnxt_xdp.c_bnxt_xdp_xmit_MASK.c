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
struct xdp_frame {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;
struct bpf_prog {int dummy; } ;
struct bnxt_tx_ring_info {int /*<<< orphan*/  tx_prod; int /*<<< orphan*/  tx_db; } ;
struct bnxt {int tx_nr_rings_xdp; TYPE_1__** bnapi; struct bnxt_tx_ring_info* tx_ring; int /*<<< orphan*/  state; struct pci_dev* pdev; int /*<<< orphan*/  xdp_prog; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int BNXT_NAPI_FLAG_XDP ; 
 int /*<<< orphan*/  BNXT_STATE_OPEN ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EINVAL ; 
 struct bpf_prog* FUNC0 (int /*<<< orphan*/ ) ; 
 int XDP_XMIT_FLUSH ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt*,struct bnxt_tx_ring_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xdp_frame*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnxt*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bnxt*,struct bnxt_tx_ring_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct bnxt* FUNC6 (struct net_device*) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct xdp_frame*) ; 

int FUNC11(struct net_device *dev, int num_frames,
		  struct xdp_frame **frames, u32 flags)
{
	struct bnxt *bp = FUNC6(dev);
	struct bpf_prog *xdp_prog = FUNC0(bp->xdp_prog);
	struct pci_dev *pdev = bp->pdev;
	struct bnxt_tx_ring_info *txr;
	dma_addr_t mapping;
	int drops = 0;
	int ring;
	int i;

	if (!FUNC8(BNXT_STATE_OPEN, &bp->state) ||
	    !bp->tx_nr_rings_xdp ||
	    !xdp_prog)
		return -EINVAL;

	ring = FUNC7() % bp->tx_nr_rings_xdp;
	txr = &bp->tx_ring[ring];

	for (i = 0; i < num_frames; i++) {
		struct xdp_frame *xdp = frames[i];

		if (!txr || !FUNC3(bp, txr) ||
		    !(bp->bnapi[ring]->flags & BNXT_NAPI_FLAG_XDP)) {
			FUNC10(xdp);
			drops++;
			continue;
		}

		mapping = FUNC4(&pdev->dev, xdp->data, xdp->len,
					 DMA_TO_DEVICE);

		if (FUNC5(&pdev->dev, mapping)) {
			FUNC10(xdp);
			drops++;
			continue;
		}
		FUNC1(bp, txr, mapping, xdp->len, xdp);
	}

	if (flags & XDP_XMIT_FLUSH) {
		/* Sync BD data before updating doorbell */
		FUNC9();
		FUNC2(bp, &txr->tx_db, txr->tx_prod);
	}

	return num_frames - drops;
}