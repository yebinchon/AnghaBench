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
struct local_info {scalar_t__ mohawk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  XIRCREG4_GPR1 ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct local_info* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void
FUNC5(struct net_device *dev)
{
    struct local_info *local = FUNC3(dev);
    unsigned int ioaddr = dev->base_addr;

    FUNC1(4);
    FUNC4(1);
    FUNC0(XIRCREG4_GPR1, 0);	     /* clear bit 0: power down */
    FUNC2(40);				     /* wait 40 msec */
    if (local->mohawk)
	FUNC0(XIRCREG4_GPR1, 1);	 /* set bit 0: power up */
    else
	FUNC0(XIRCREG4_GPR1, 1 | 4);	 /* set bit 0: power up, bit 2: AIC */
    FUNC2(20);			     /* wait 20 msec */
}