#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct fec_enet_private {scalar_t__ bufdesc_ex; struct fec_enet_priv_tx_q** tx_queue; } ;
struct TYPE_3__ {unsigned int ring_size; struct bufdesc* base; } ;
struct fec_enet_priv_tx_q {TYPE_1__ bd; int /*<<< orphan*/ * tx_bounce; } ;
struct bufdesc_ex {void* cbd_esc; } ;
struct bufdesc {int /*<<< orphan*/  cbd_sc; void* cbd_bufaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BD_ENET_TX_INT ; 
 int /*<<< orphan*/  BD_SC_WRAP ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FEC_ENET_TX_FRSIZE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct bufdesc* FUNC3 (struct bufdesc*,TYPE_1__*) ; 
 struct bufdesc* FUNC4 (struct bufdesc*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fec_enet_private* FUNC6 (struct net_device*) ; 

__attribute__((used)) static int
FUNC7(struct net_device *ndev, unsigned int queue)
{
	struct fec_enet_private *fep = FUNC6(ndev);
	unsigned int i;
	struct bufdesc  *bdp;
	struct fec_enet_priv_tx_q *txq;

	txq = fep->tx_queue[queue];
	bdp = txq->bd.base;
	for (i = 0; i < txq->bd.ring_size; i++) {
		txq->tx_bounce[i] = FUNC5(FEC_ENET_TX_FRSIZE, GFP_KERNEL);
		if (!txq->tx_bounce[i])
			goto err_alloc;

		bdp->cbd_sc = FUNC0(0);
		bdp->cbd_bufaddr = FUNC1(0);

		if (fep->bufdesc_ex) {
			struct bufdesc_ex *ebdp = (struct bufdesc_ex *)bdp;
			ebdp->cbd_esc = FUNC1(BD_ENET_TX_INT);
		}

		bdp = FUNC3(bdp, &txq->bd);
	}

	/* Set the last buffer to wrap. */
	bdp = FUNC4(bdp, &txq->bd);
	bdp->cbd_sc |= FUNC0(BD_SC_WRAP);

	return 0;

 err_alloc:
	FUNC2(ndev);
	return -ENOMEM;
}