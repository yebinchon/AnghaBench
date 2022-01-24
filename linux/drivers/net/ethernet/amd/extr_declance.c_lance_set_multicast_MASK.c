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
typedef  int /*<<< orphan*/  u16 ;
struct net_device {int flags; scalar_t__ mem_start; } ;
struct lance_regs {int /*<<< orphan*/  rdp; int /*<<< orphan*/  rap; } ;
struct lance_private {scalar_t__ tx_old; scalar_t__ tx_new; int /*<<< orphan*/  type; int /*<<< orphan*/  multicast_timer; struct lance_regs* ll; } ;

/* Variables and functions */
 int HZ ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  LE_C0_STOP ; 
 int /*<<< orphan*/  LE_CSR0 ; 
 int /*<<< orphan*/  LE_MO_PROM ; 
 int /*<<< orphan*/  FUNC0 (struct lance_private*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/  volatile*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct lance_private*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  mode ; 
 struct lance_private* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct net_device *dev)
{
	struct lance_private *lp = FUNC6(dev);
	volatile u16 *ib = (volatile u16 *)dev->mem_start;
	volatile struct lance_regs *ll = lp->ll;

	if (!FUNC7(dev))
		return;

	if (lp->tx_old != lp->tx_new) {
		FUNC5(&lp->multicast_timer, jiffies + 4 * HZ/100);
		FUNC9(dev);
		return;
	}

	FUNC8(dev);

	FUNC10(&ll->rap, LE_CSR0);
	FUNC10(&ll->rdp, LE_C0_STOP);

	FUNC1(dev);

	if (dev->flags & IFF_PROMISC) {
		*FUNC3(ib, mode, lp->type) |= LE_MO_PROM;
	} else {
		*FUNC3(ib, mode, lp->type) &= ~LE_MO_PROM;
		FUNC2(dev);
	}
	FUNC4(lp);
	FUNC0(lp);
	FUNC9(dev);
}