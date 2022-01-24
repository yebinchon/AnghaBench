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
struct TYPE_2__ {int /*<<< orphan*/  rx_dropped; } ;
struct net_device {TYPE_1__ stats; } ;
struct ftmac100_rxdes {int dummy; } ;
struct ftmac100 {struct net_device* netdev; } ;

/* Variables and functions */
 struct ftmac100_rxdes* FUNC0 (struct ftmac100*) ; 
 int /*<<< orphan*/  FUNC1 (struct ftmac100*) ; 
 scalar_t__ FUNC2 (struct ftmac100_rxdes*) ; 
 int /*<<< orphan*/  FUNC3 (struct ftmac100_rxdes*) ; 
 int /*<<< orphan*/  FUNC4 (struct ftmac100_rxdes*) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,char*,struct ftmac100_rxdes*) ; 

__attribute__((used)) static void FUNC7(struct ftmac100 *priv)
{
	struct net_device *netdev = priv->netdev;
	struct ftmac100_rxdes *rxdes = FUNC0(priv);
	bool done = false;

	if (FUNC5())
		FUNC6(netdev, "drop packet %p\n", rxdes);

	do {
		if (FUNC2(rxdes))
			done = true;

		FUNC4(rxdes);
		FUNC1(priv);
		rxdes = FUNC0(priv);
	} while (!done && !FUNC3(rxdes));

	netdev->stats.rx_dropped++;
}