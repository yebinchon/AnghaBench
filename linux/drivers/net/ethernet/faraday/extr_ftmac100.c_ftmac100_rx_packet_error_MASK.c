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
struct TYPE_2__ {int /*<<< orphan*/  rx_length_errors; int /*<<< orphan*/  rx_crc_errors; int /*<<< orphan*/  rx_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct ftmac100_rxdes {int dummy; } ;
struct ftmac100 {struct net_device* netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ftmac100_rxdes*) ; 
 int /*<<< orphan*/  FUNC1 (struct ftmac100_rxdes*) ; 
 int /*<<< orphan*/  FUNC2 (struct ftmac100_rxdes*) ; 
 int /*<<< orphan*/  FUNC3 (struct ftmac100_rxdes*) ; 
 int /*<<< orphan*/  FUNC4 (struct ftmac100_rxdes*) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC8(struct ftmac100 *priv,
				     struct ftmac100_rxdes *rxdes)
{
	struct net_device *netdev = priv->netdev;
	bool error = false;

	if (FUNC7(FUNC4(rxdes))) {
		if (FUNC5())
			FUNC6(netdev, "rx err\n");

		netdev->stats.rx_errors++;
		error = true;
	}

	if (FUNC7(FUNC0(rxdes))) {
		if (FUNC5())
			FUNC6(netdev, "rx crc err\n");

		netdev->stats.rx_crc_errors++;
		error = true;
	}

	if (FUNC7(FUNC1(rxdes))) {
		if (FUNC5())
			FUNC6(netdev, "rx frame too long\n");

		netdev->stats.rx_length_errors++;
		error = true;
	} else if (FUNC7(FUNC3(rxdes))) {
		if (FUNC5())
			FUNC6(netdev, "rx runt\n");

		netdev->stats.rx_length_errors++;
		error = true;
	} else if (FUNC7(FUNC2(rxdes))) {
		if (FUNC5())
			FUNC6(netdev, "rx odd nibble\n");

		netdev->stats.rx_length_errors++;
		error = true;
	}

	return error;
}