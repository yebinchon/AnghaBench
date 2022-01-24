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
struct smc_private {int duplex; int /*<<< orphan*/  packets_waiting; int /*<<< orphan*/  tx_err; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_aborted_errors; int /*<<< orphan*/  tx_window_errors; int /*<<< orphan*/  tx_carrier_errors; int /*<<< orphan*/  tx_errors; } ;
struct net_device {unsigned int base_addr; TYPE_1__ stats; } ;

/* Variables and functions */
 scalar_t__ DATA_1 ; 
 scalar_t__ FIFO_PORTS ; 
 int MC_FREEPKT ; 
 scalar_t__ MMU_CMD ; 
 scalar_t__ PNR_ARR ; 
 scalar_t__ POINTER ; 
 int PTR_AUTOINC ; 
 int PTR_READ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ TCR ; 
 int TCR_ENABLE ; 
 int TS_16COL ; 
 int TS_LATCOL ; 
 int TS_LOSTCAR ; 
 int TS_SUCCESS ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*) ; 
 struct smc_private* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct net_device * dev)
{
    struct smc_private *smc = FUNC3(dev);
    unsigned int ioaddr = dev->base_addr;
    int saved_packet = FUNC1(ioaddr + PNR_ARR) & 0xff;
    int packet_no = FUNC1(ioaddr + FIFO_PORTS) & 0x7f;
    int tx_status;

    /* select this as the packet to read from */
    FUNC4(packet_no, ioaddr + PNR_ARR);

    /* read the first word from this packet */
    FUNC4(PTR_AUTOINC | PTR_READ | 0, ioaddr + POINTER);

    tx_status = FUNC1(ioaddr + DATA_1);

    dev->stats.tx_errors++;
    if (tx_status & TS_LOSTCAR) dev->stats.tx_carrier_errors++;
    if (tx_status & TS_LATCOL)  dev->stats.tx_window_errors++;
    if (tx_status & TS_16COL) {
	dev->stats.tx_aborted_errors++;
	smc->tx_err++;
    }

    if (tx_status & TS_SUCCESS) {
	FUNC2(dev, "Successful packet caused error interrupt?\n");
    }
    /* re-enable transmit */
    FUNC0(0);
    FUNC4(FUNC1(ioaddr + TCR) | TCR_ENABLE | smc->duplex, ioaddr + TCR);
    FUNC0(2);

    FUNC4(MC_FREEPKT, ioaddr + MMU_CMD); 	/* Free the packet memory. */

    /* one less packet waiting for me */
    smc->packets_waiting--;

    FUNC4(saved_packet, ioaddr + PNR_ARR);
}