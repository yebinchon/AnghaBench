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
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;
struct ftgmac100 {struct net_device* netdev; } ;

/* Variables and functions */
 scalar_t__ TX_THRESHOLD ; 
 int /*<<< orphan*/  FUNC0 (struct netdev_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct netdev_queue*) ; 
 scalar_t__ FUNC2 (struct ftgmac100*) ; 
 scalar_t__ FUNC3 (struct ftgmac100*) ; 
 scalar_t__ FUNC4 (struct ftgmac100*) ; 
 struct netdev_queue* FUNC5 (struct net_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static void FUNC11(struct ftgmac100 *priv)
{
	struct net_device *netdev = priv->netdev;

	/* Process all completed packets */
	while (FUNC3(priv) &&
	       FUNC4(priv))
		;

	/* Restart queue if needed */
	FUNC8();
	if (FUNC10(FUNC6(netdev) &&
		     FUNC2(priv) >= TX_THRESHOLD)) {
		struct netdev_queue *txq;

		txq = FUNC5(netdev, 0);
		FUNC0(txq, FUNC9());
		if (FUNC6(netdev) &&
		    FUNC2(priv) >= TX_THRESHOLD)
			FUNC7(netdev);
		FUNC1(txq);
	}
}