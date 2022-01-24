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
struct net_device {int dummy; } ;
struct ei_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ dmaing; scalar_t__ txing; } ;

/* Variables and functions */
 scalar_t__ EN0_ISR ; 
 int ENISR_RESET ; 
 scalar_t__ NE_BASE ; 
 scalar_t__ NE_RESET ; 
 TYPE_1__ ei_status ; 
 int /*<<< orphan*/  hw ; 
 int FUNC0 (scalar_t__) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*) ; 
 struct ei_device* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ei_device*,int /*<<< orphan*/ ,struct net_device*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev)
{
	unsigned long reset_start_time = jiffies;
	struct ei_device *ei_local = FUNC2(dev);

	FUNC3(ei_local, hw, dev, "resetting the 8390 t=%ld...\n",
		  jiffies);

	FUNC4(FUNC0(NE_BASE + NE_RESET), NE_BASE + NE_RESET);

	ei_status.txing = 0;
	ei_status.dmaing = 0;

	/* This check _should_not_ be necessary, omit eventually. */
	while ((FUNC0(NE_BASE+EN0_ISR) & ENISR_RESET) == 0)
		if (jiffies - reset_start_time > 2) {
			FUNC1(dev, "ne2k_pci_reset_8390() did not complete.\n");
			break;
		}
	FUNC4(ENISR_RESET, NE_BASE + EN0_ISR);	/* Ack intr. */
}