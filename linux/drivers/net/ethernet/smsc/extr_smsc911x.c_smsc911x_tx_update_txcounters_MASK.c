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
struct smsc911x_data {int dummy; } ;
struct TYPE_2__ {unsigned int tx_bytes; int tx_carrier_errors; scalar_t__ tx_aborted_errors; scalar_t__ collisions; int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_errors; } ;
struct net_device {TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct smsc911x_data*,int /*<<< orphan*/ ,char*) ; 
 unsigned int TX_STS_ES_ ; 
 unsigned int TX_STS_EXCESS_COL_ ; 
 unsigned int TX_STS_LATE_COL_ ; 
 unsigned int TX_STS_LOST_CARRIER_ ; 
 int /*<<< orphan*/  hw ; 
 struct smsc911x_data* FUNC1 (struct net_device*) ; 
 unsigned int FUNC2 (struct smsc911x_data*) ; 
 scalar_t__ FUNC3 (unsigned int) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev)
{
	struct smsc911x_data *pdata = FUNC1(dev);
	unsigned int tx_stat;

	while ((tx_stat = FUNC2(pdata)) != 0) {
		if (FUNC3(tx_stat & 0x80000000)) {
			/* In this driver the packet tag is used as the packet
			 * length. Since a packet length can never reach the
			 * size of 0x8000, this bit is reserved. It is worth
			 * noting that the "reserved bit" in the warning above
			 * does not reference a hardware defined reserved bit
			 * but rather a driver defined one.
			 */
			FUNC0(pdata, hw, "Packet tag reserved bit is high");
		} else {
			if (FUNC3(tx_stat & TX_STS_ES_)) {
				dev->stats.tx_errors++;
			} else {
				dev->stats.tx_packets++;
				dev->stats.tx_bytes += (tx_stat >> 16);
			}
			if (FUNC3(tx_stat & TX_STS_EXCESS_COL_)) {
				dev->stats.collisions += 16;
				dev->stats.tx_aborted_errors += 1;
			} else {
				dev->stats.collisions +=
				    ((tx_stat >> 3) & 0xF);
			}
			if (FUNC3(tx_stat & TX_STS_LOST_CARRIER_))
				dev->stats.tx_carrier_errors += 1;
			if (FUNC3(tx_stat & TX_STS_LATE_COL_)) {
				dev->stats.collisions++;
				dev->stats.tx_aborted_errors++;
			}
		}
	}
}