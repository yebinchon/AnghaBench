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
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct fec_enet_private {scalar_t__ bufdesc_ex; struct fec_enet_priv_rx_q** rx_queue; } ;
struct TYPE_3__ {unsigned int ring_size; struct bufdesc* base; } ;
struct fec_enet_priv_rx_q {TYPE_1__ bd; struct sk_buff** rx_skbuff; } ;
struct bufdesc_ex {int /*<<< orphan*/  cbd_esc; } ;
struct bufdesc {int /*<<< orphan*/  cbd_sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  BD_ENET_RX_EMPTY ; 
 int /*<<< orphan*/  BD_ENET_RX_INT ; 
 int /*<<< orphan*/  BD_SC_WRAP ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FEC_ENET_RX_FRSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 struct bufdesc* FUNC4 (struct bufdesc*,TYPE_1__*) ; 
 struct bufdesc* FUNC5 (struct bufdesc*,TYPE_1__*) ; 
 scalar_t__ FUNC6 (struct net_device*,struct bufdesc*,struct sk_buff*) ; 
 struct sk_buff* FUNC7 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct fec_enet_private* FUNC8 (struct net_device*) ; 

__attribute__((used)) static int
FUNC9(struct net_device *ndev, unsigned int queue)
{
	struct fec_enet_private *fep = FUNC8(ndev);
	unsigned int i;
	struct sk_buff *skb;
	struct bufdesc	*bdp;
	struct fec_enet_priv_rx_q *rxq;

	rxq = fep->rx_queue[queue];
	bdp = rxq->bd.base;
	for (i = 0; i < rxq->bd.ring_size; i++) {
		skb = FUNC7(ndev, FEC_ENET_RX_FRSIZE);
		if (!skb)
			goto err_alloc;

		if (FUNC6(ndev, bdp, skb)) {
			FUNC2(skb);
			goto err_alloc;
		}

		rxq->rx_skbuff[i] = skb;
		bdp->cbd_sc = FUNC0(BD_ENET_RX_EMPTY);

		if (fep->bufdesc_ex) {
			struct bufdesc_ex *ebdp = (struct bufdesc_ex *)bdp;
			ebdp->cbd_esc = FUNC1(BD_ENET_RX_INT);
		}

		bdp = FUNC4(bdp, &rxq->bd);
	}

	/* Set the last buffer to wrap. */
	bdp = FUNC5(bdp, &rxq->bd);
	bdp->cbd_sc |= FUNC0(BD_SC_WRAP);
	return 0;

 err_alloc:
	FUNC3(ndev);
	return -ENOMEM;
}