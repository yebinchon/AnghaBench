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
struct net_device {unsigned int base_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  XIRCREG4_GPR1 ; 
 int /*<<< orphan*/  FUNC2 (char*,struct net_device*) ; 

__attribute__((used)) static void
FUNC3(struct net_device *dev)
{

    unsigned int ioaddr = dev->base_addr;

    FUNC2("do_powerdown(%p)\n", dev);

    FUNC1(4);
    FUNC0(XIRCREG4_GPR1, 0);	     /* clear bit 0: power down */
    FUNC1(0);
}