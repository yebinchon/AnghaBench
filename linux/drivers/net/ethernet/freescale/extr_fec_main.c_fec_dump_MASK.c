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
struct net_device {int dummy; } ;
struct fec_enet_private {struct fec_enet_priv_tx_q** tx_queue; } ;
struct TYPE_2__ {struct bufdesc* cur; struct bufdesc* base; } ;
struct fec_enet_priv_tx_q {TYPE_1__ bd; int /*<<< orphan*/ * tx_skbuff; struct bufdesc* dirty_tx; } ;
struct bufdesc {int /*<<< orphan*/  cbd_datlen; int /*<<< orphan*/  cbd_bufaddr; int /*<<< orphan*/  cbd_sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct bufdesc* FUNC2 (struct bufdesc*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*) ; 
 struct fec_enet_private* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static void FUNC6(struct net_device *ndev)
{
	struct fec_enet_private *fep = FUNC4(ndev);
	struct bufdesc *bdp;
	struct fec_enet_priv_tx_q *txq;
	int index = 0;

	FUNC3(ndev, "TX ring dump\n");
	FUNC5("Nr     SC     addr       len  SKB\n");

	txq = fep->tx_queue[0];
	bdp = txq->bd.base;

	do {
		FUNC5("%3u %c%c 0x%04x 0x%08x %4u %p\n",
			index,
			bdp == txq->bd.cur ? 'S' : ' ',
			bdp == txq->dirty_tx ? 'H' : ' ',
			FUNC0(bdp->cbd_sc),
			FUNC1(bdp->cbd_bufaddr),
			FUNC0(bdp->cbd_datlen),
			txq->tx_skbuff[index]);
		bdp = FUNC2(bdp, &txq->bd);
		index++;
	} while (bdp != txq->bd.base);
}