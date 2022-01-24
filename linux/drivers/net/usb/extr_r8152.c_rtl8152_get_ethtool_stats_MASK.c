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
typedef  int /*<<< orphan*/  tally ;
struct tally_counter {int /*<<< orphan*/  tx_underrun; int /*<<< orphan*/  tx_aborted; int /*<<< orphan*/  rx_multicast; int /*<<< orphan*/  rx_broadcast; int /*<<< orphan*/  rx_unicast; int /*<<< orphan*/  tx_multi_collision; int /*<<< orphan*/  tx_one_collision; int /*<<< orphan*/  align_errors; int /*<<< orphan*/  rx_missed; int /*<<< orphan*/  rx_errors; int /*<<< orphan*/  tx_errors; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  tx_packets; } ;
struct r8152 {int /*<<< orphan*/  intf; } ;
struct net_device {int dummy; } ;
struct ethtool_stats {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MCU_TYPE_PLA ; 
 int /*<<< orphan*/  PLA_TALLYCNT ; 
 int /*<<< orphan*/  FUNC0 (struct r8152*,int /*<<< orphan*/ ,int,struct tally_counter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct r8152* FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct net_device *dev,
				      struct ethtool_stats *stats, u64 *data)
{
	struct r8152 *tp = FUNC4(dev);
	struct tally_counter tally;

	if (FUNC5(tp->intf) < 0)
		return;

	FUNC0(tp, PLA_TALLYCNT, sizeof(tally), &tally, MCU_TYPE_PLA);

	FUNC6(tp->intf);

	data[0] = FUNC3(tally.tx_packets);
	data[1] = FUNC3(tally.rx_packets);
	data[2] = FUNC3(tally.tx_errors);
	data[3] = FUNC2(tally.rx_errors);
	data[4] = FUNC1(tally.rx_missed);
	data[5] = FUNC1(tally.align_errors);
	data[6] = FUNC2(tally.tx_one_collision);
	data[7] = FUNC2(tally.tx_multi_collision);
	data[8] = FUNC3(tally.rx_unicast);
	data[9] = FUNC3(tally.rx_broadcast);
	data[10] = FUNC2(tally.rx_multicast);
	data[11] = FUNC1(tally.tx_aborted);
	data[12] = FUNC1(tally.tx_underrun);
}