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
typedef  int u_short ;
struct TYPE_2__ {int rx_errors; int rx_over_errors; int rx_crc_errors; int tx_errors; int tx_aborted_errors; } ;
struct net_device {int base_addr; TYPE_1__ stats; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABORT ; 
 int /*<<< orphan*/  CRC ; 
 int /*<<< orphan*/  DROPPED ; 
 int /*<<< orphan*/  MAC_CTRL ; 
 int /*<<< orphan*/  PERFORMANCE ; 
 int /*<<< orphan*/  TRACE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev)
{
	int ioaddr = dev->base_addr;
	u_short val;

#ifdef HP100_DEBUG_B
	hp100_outw(0x4216, TRACE);
	printk("hp100: %s: update-stats\n", dev->name);
#endif

	/* Note: Statistics counters clear when read. */
	FUNC3(MAC_CTRL);
	val = FUNC1(DROPPED) & 0x0fff;
	dev->stats.rx_errors += val;
	dev->stats.rx_over_errors += val;
	val = FUNC0(CRC);
	dev->stats.rx_errors += val;
	dev->stats.rx_crc_errors += val;
	val = FUNC0(ABORT);
	dev->stats.tx_errors += val;
	dev->stats.tx_aborted_errors += val;
	FUNC3(PERFORMANCE);
}