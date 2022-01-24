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
struct net_device {int flags; scalar_t__ base_addr; } ;
struct Am79C960 {int RDP; void* RAP; } ;
typedef  int /*<<< orphan*/  multicast_table ;

/* Variables and functions */
 void* CSR0 ; 
 void* CSR15 ; 
 void* CSR8 ; 
 int IDON ; 
 int IFF_PROMISC ; 
 int INEA ; 
 int PROM ; 
 int STOP ; 
 int STRT ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (short*,int,int) ; 
 int FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int FUNC6 (short) ; 

__attribute__((used)) static void FUNC7(struct net_device *dev)
{
	volatile struct Am79C960 *lance = (struct Am79C960 *)dev->base_addr;

	if (!FUNC3(dev))
		return;

	FUNC4(dev);

	/* We take the simple way out and always enable promiscuous mode */
	lance->RAP = CSR0;		/* PCnet-ISA Controller Status */
	lance->RDP = STOP;		/* Temporarily stop the lance */
	FUNC0(dev);

	if (dev->flags & IFF_PROMISC) {
		lance->RAP = CSR15;	/* Mode Register */
		lance->RDP = PROM;	/* Set promiscuous mode */
	} else {
		short multicast_table[4];
		int num_addrs = FUNC2(dev);
		int i;
		/* We don't use the multicast table,
		 * but rely on upper-layer filtering
		 */
		FUNC1(multicast_table, (num_addrs == 0) ? 0 : -1,
		       sizeof(multicast_table));
		for (i = 0; i < 4; i++) {
			lance->RAP = CSR8 + (i << 8);
					/* Logical Address Filter */
			lance->RDP = FUNC6(multicast_table[i]);
		}
		lance->RAP = CSR15;	/* Mode Register */
		lance->RDP = 0x0000;	/* Unset promiscuous mode */
	}

	lance->RAP = CSR0;		/* PCnet-ISA Controller Status */
	lance->RDP = INEA | STRT | IDON;/* Resume normal operation */

	FUNC5(dev);
}