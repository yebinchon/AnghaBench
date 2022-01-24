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
typedef  int /*<<< orphan*/  u64 ;
struct rtl8169_private {struct rtl8169_counters* counters; } ;
struct rtl8169_counters {int /*<<< orphan*/  tx_underun; int /*<<< orphan*/  tx_aborted; int /*<<< orphan*/  rx_multicast; int /*<<< orphan*/  rx_broadcast; int /*<<< orphan*/  rx_unicast; int /*<<< orphan*/  tx_multi_collision; int /*<<< orphan*/  tx_one_collision; int /*<<< orphan*/  align_errors; int /*<<< orphan*/  rx_missed; int /*<<< orphan*/  rx_errors; int /*<<< orphan*/  tx_errors; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  tx_packets; } ;
struct net_device {int dummy; } ;
struct ethtool_stats {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct rtl8169_private* FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct rtl8169_private*) ; 
 struct device* FUNC9 (struct rtl8169_private*) ; 

__attribute__((used)) static void FUNC10(struct net_device *dev,
				      struct ethtool_stats *stats, u64 *data)
{
	struct rtl8169_private *tp = FUNC4(dev);
	struct device *d = FUNC9(tp);
	struct rtl8169_counters *counters = tp->counters;

	FUNC0();

	FUNC6(d);

	if (FUNC5(d))
		FUNC8(tp);

	FUNC7(d);

	data[0] = FUNC3(counters->tx_packets);
	data[1] = FUNC3(counters->rx_packets);
	data[2] = FUNC3(counters->tx_errors);
	data[3] = FUNC2(counters->rx_errors);
	data[4] = FUNC1(counters->rx_missed);
	data[5] = FUNC1(counters->align_errors);
	data[6] = FUNC2(counters->tx_one_collision);
	data[7] = FUNC2(counters->tx_multi_collision);
	data[8] = FUNC3(counters->rx_unicast);
	data[9] = FUNC3(counters->rx_broadcast);
	data[10] = FUNC2(counters->rx_multicast);
	data[11] = FUNC1(counters->tx_aborted);
	data[12] = FUNC1(counters->tx_underun);
}