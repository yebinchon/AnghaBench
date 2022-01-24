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
struct TYPE_2__ {int /*<<< orphan*/  rx_missed_errors; } ;
struct net_device {TYPE_1__ stats; scalar_t__ base_addr; } ;
struct Am79C960 {int /*<<< orphan*/  RDP; int /*<<< orphan*/  RAP; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR0 ; 
 int /*<<< orphan*/  CSR112 ; 
 int /*<<< orphan*/  IRQ_AMIGA_PORTS ; 
 int /*<<< orphan*/  STOP ; 
 int ariadne_debug ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev)
{
	volatile struct Am79C960 *lance = (struct Am79C960 *)dev->base_addr;

	FUNC2(dev);

	lance->RAP = CSR112;		/* Missed Frame Count */
	dev->stats.rx_missed_errors = FUNC3(lance->RDP);
	lance->RAP = CSR0;		/* PCnet-ISA Controller Status */

	if (ariadne_debug > 1) {
		FUNC1(dev, "Shutting down ethercard, status was %02x\n",
			   lance->RDP);
		FUNC1(dev, "%lu packets missed\n",
			   dev->stats.rx_missed_errors);
	}

	/* We stop the LANCE here -- it occasionally polls memory if we don't */
	lance->RDP = STOP;

	FUNC0(IRQ_AMIGA_PORTS, dev);

	return 0;
}