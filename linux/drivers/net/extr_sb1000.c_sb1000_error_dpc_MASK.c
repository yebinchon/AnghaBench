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
struct sb1000_private {int rx_error_dpc_count; } ;
struct net_device {int base_addr; int mem_start; char* name; } ;

/* Variables and functions */
 struct sb1000_private* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (int*,char*,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC3 (int*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int*,char*) ; 

__attribute__((used)) static void
FUNC5(struct net_device *dev)
{
	static const unsigned char Command0[6] = {0x80, 0x26, 0x00, 0x00, 0x00, 0x00};

	char *name;
	unsigned char st[5];
	int ioaddr[2];
	struct sb1000_private *lp = FUNC0(dev);
	const int ErrorDpcCounterInitialize = 200;

	ioaddr[0] = dev->base_addr;
	/* mem_start holds the second I/O address */
	ioaddr[1] = dev->mem_start;
	name = dev->name;

	FUNC4(ioaddr, name);
	FUNC2(ioaddr, name, Command0);
	FUNC3(ioaddr, name);
	FUNC1(ioaddr, st);
	if (st[1] & 0x10)
		lp->rx_error_dpc_count = ErrorDpcCounterInitialize;
}