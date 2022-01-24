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
struct net_device {unsigned int base_addr; } ;
struct TYPE_2__ {scalar_t__ dmaing; scalar_t__ txing; } ;

/* Variables and functions */
 scalar_t__ E8390_CMD ; 
 int E8390_NODMA ; 
 int E8390_PAGE0 ; 
 int E8390_STOP ; 
 scalar_t__ EN0_ISR ; 
 int ENISR_RESET ; 
 scalar_t__ PCNET_RESET ; 
 TYPE_1__ ei_status ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct net_device *dev)
{
    unsigned int nic_base = dev->base_addr;
    int i;

    ei_status.txing = ei_status.dmaing = 0;

    FUNC4(E8390_NODMA+E8390_PAGE0+E8390_STOP, nic_base + E8390_CMD);

    FUNC3(FUNC0(nic_base + PCNET_RESET), nic_base + PCNET_RESET);

    for (i = 0; i < 100; i++) {
	if ((FUNC1(nic_base+EN0_ISR) & ENISR_RESET) != 0)
	    break;
	FUNC6(100);
    }
    FUNC4(ENISR_RESET, nic_base + EN0_ISR); /* Ack intr. */

    if (i == 100)
	FUNC2(dev, "pcnet_reset_8390() did not complete.\n");

    FUNC5(dev);

}