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
struct net_device {unsigned long base_addr; } ;
struct ei_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ E8390_CMD ; 
 int E8390_NODMA ; 
 int E8390_PAGE0 ; 
 int E8390_START ; 
 int E8390_TRANS ; 
 scalar_t__ EN0_TCNTHI ; 
 scalar_t__ EN0_TCNTLO ; 
 scalar_t__ EN0_TPSR ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 struct ei_device* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev, unsigned int length,
								int start_page)
{
	unsigned long e8390_base = dev->base_addr;
	struct ei_device *ei_local __attribute((unused)) = FUNC2(dev);

	FUNC1(E8390_NODMA+E8390_PAGE0, e8390_base+E8390_CMD);

	if (FUNC0(e8390_base + E8390_CMD) & E8390_TRANS) {
		FUNC3(dev, "trigger_send() called with the transmitter busy\n");
		return;
	}
	FUNC1(length & 0xff, e8390_base + EN0_TCNTLO);
	FUNC1(length >> 8, e8390_base + EN0_TCNTHI);
	FUNC1(start_page, e8390_base + EN0_TPSR);
	FUNC1(E8390_NODMA+E8390_TRANS+E8390_START, e8390_base+E8390_CMD);
}