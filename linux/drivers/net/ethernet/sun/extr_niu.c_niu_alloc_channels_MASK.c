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
struct tx_ring_info {int tx_channel; struct niu* np; } ;
struct rx_ring_info {int rx_channel; int nonsyn_window; int syn_window; int rcr_pkt_threshold; int rcr_timeout; scalar_t__ rbr_kick_thresh; scalar_t__ rbr_blocks_per_page; scalar_t__ rcr_table_size; scalar_t__ syn_threshold; scalar_t__ nonsyn_threshold; struct niu* np; } ;
struct niu_parent {int* rxchan_per_port; int* txchan_per_port; } ;
struct niu {int port; int num_rx_rings; int num_tx_rings; struct tx_ring_info* tx_rings; int /*<<< orphan*/  dev; struct rx_ring_info* rx_rings; struct niu_parent* parent; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ RBR_REFILL_MIN ; 
 void* FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct niu*,struct rx_ring_info*) ; 
 int FUNC4 (struct niu*,struct tx_ring_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct niu*) ; 
 int FUNC6 (struct niu*,struct rx_ring_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct niu*,struct rx_ring_info*) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static int FUNC9(struct niu *np)
{
	struct niu_parent *parent = np->parent;
	int first_rx_channel, first_tx_channel;
	int num_rx_rings, num_tx_rings;
	struct rx_ring_info *rx_rings;
	struct tx_ring_info *tx_rings;
	int i, port, err;

	port = np->port;
	first_rx_channel = first_tx_channel = 0;
	for (i = 0; i < port; i++) {
		first_rx_channel += parent->rxchan_per_port[i];
		first_tx_channel += parent->txchan_per_port[i];
	}

	num_rx_rings = parent->rxchan_per_port[port];
	num_tx_rings = parent->txchan_per_port[port];

	rx_rings = FUNC0(num_rx_rings, sizeof(struct rx_ring_info),
			   GFP_KERNEL);
	err = -ENOMEM;
	if (!rx_rings)
		goto out_err;

	np->num_rx_rings = num_rx_rings;
	FUNC8();
	np->rx_rings = rx_rings;

	FUNC1(np->dev, num_rx_rings);

	for (i = 0; i < np->num_rx_rings; i++) {
		struct rx_ring_info *rp = &np->rx_rings[i];

		rp->np = np;
		rp->rx_channel = first_rx_channel + i;

		err = FUNC3(np, rp);
		if (err)
			goto out_err;

		FUNC7(np, rp);

		/* XXX better defaults, configurable, etc... XXX */
		rp->nonsyn_window = 64;
		rp->nonsyn_threshold = rp->rcr_table_size - 64;
		rp->syn_window = 64;
		rp->syn_threshold = rp->rcr_table_size - 64;
		rp->rcr_pkt_threshold = 16;
		rp->rcr_timeout = 8;
		rp->rbr_kick_thresh = RBR_REFILL_MIN;
		if (rp->rbr_kick_thresh < rp->rbr_blocks_per_page)
			rp->rbr_kick_thresh = rp->rbr_blocks_per_page;

		err = FUNC6(np, rp, GFP_KERNEL);
		if (err)
			return err;
	}

	tx_rings = FUNC0(num_tx_rings, sizeof(struct tx_ring_info),
			   GFP_KERNEL);
	err = -ENOMEM;
	if (!tx_rings)
		goto out_err;

	np->num_tx_rings = num_tx_rings;
	FUNC8();
	np->tx_rings = tx_rings;

	FUNC2(np->dev, num_tx_rings);

	for (i = 0; i < np->num_tx_rings; i++) {
		struct tx_ring_info *rp = &np->tx_rings[i];

		rp->np = np;
		rp->tx_channel = first_tx_channel + i;

		err = FUNC4(np, rp);
		if (err)
			goto out_err;
	}

	return 0;

out_err:
	FUNC5(np);
	return err;
}