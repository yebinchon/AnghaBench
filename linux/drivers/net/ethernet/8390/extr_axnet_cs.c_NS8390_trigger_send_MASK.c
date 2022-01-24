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
struct net_device {long base_addr; } ;
struct ei_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ E8390_CMD ; 
 int E8390_NODMA ; 
 int E8390_START ; 
 int E8390_TRANS ; 
 scalar_t__ EN0_TCNTHI ; 
 scalar_t__ EN0_TCNTLO ; 
 scalar_t__ EN0_TPSR ; 
 int FUNC0 (long) ; 
 struct ei_device* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev, unsigned int length,
								int start_page)
{
	long e8390_base = dev->base_addr;
 	struct ei_device *ei_local __attribute((unused)) = FUNC1(dev);
    
	if (FUNC0(e8390_base) & E8390_TRANS) 
	{
		FUNC2(dev, "trigger_send() called with the transmitter busy\n");
		return;
	}
	FUNC3(length & 0xff, e8390_base + EN0_TCNTLO);
	FUNC3(length >> 8, e8390_base + EN0_TCNTHI);
	FUNC3(start_page, e8390_base + EN0_TPSR);
	FUNC3(E8390_NODMA+E8390_TRANS+E8390_START, e8390_base+E8390_CMD);
}