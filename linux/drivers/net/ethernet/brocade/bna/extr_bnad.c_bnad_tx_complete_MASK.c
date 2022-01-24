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
typedef  scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct bnad {struct net_device* netdev; } ;
struct bna_tcb {int /*<<< orphan*/  flags; int /*<<< orphan*/  i_dbell; int /*<<< orphan*/  q_depth; } ;

/* Variables and functions */
 scalar_t__ BNAD_NETIF_WAKE_THRESHOLD ; 
 int /*<<< orphan*/  BNAD_TXQ_FREE_SENT ; 
 int /*<<< orphan*/  BNAD_TXQ_TX_STARTED ; 
 int /*<<< orphan*/  FUNC0 (struct bnad*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct bna_tcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (struct bnad*,struct bna_tcb*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (struct net_device*) ; 
 scalar_t__ FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  netif_queue_wakeup ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static u32
FUNC12(struct bnad *bnad, struct bna_tcb *tcb)
{
	struct net_device *netdev = bnad->netdev;
	u32 sent = 0;

	if (FUNC10(BNAD_TXQ_FREE_SENT, &tcb->flags))
		return 0;

	sent = FUNC3(bnad, tcb);
	if (sent) {
		if (FUNC7(netdev) &&
		    FUNC6(netdev) &&
		    FUNC1(tcb, tcb->q_depth) >=
				    BNAD_NETIF_WAKE_THRESHOLD) {
			if (FUNC11(BNAD_TXQ_TX_STARTED, &tcb->flags)) {
				FUNC8(netdev);
				FUNC0(bnad, netif_queue_wakeup);
			}
		}
	}

	if (FUNC5(FUNC11(BNAD_TXQ_TX_STARTED, &tcb->flags)))
		FUNC2(tcb->i_dbell, sent);

	FUNC9();
	FUNC4(BNAD_TXQ_FREE_SENT, &tcb->flags);

	return sent;
}