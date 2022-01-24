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
typedef  int /*<<< orphan*/  ulong ;
struct pcnet32_private {int* save_regs; int /*<<< orphan*/  lock; struct pcnet32_access* a; } ;
struct pcnet32_access {int (* read_bcr ) (int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* write_bcr ) (int /*<<< orphan*/ ,int,int) ;} ;
struct net_device {int /*<<< orphan*/  base_addr; } ;
typedef  enum ethtool_phys_id_state { ____Placeholder_ethtool_phys_id_state } ethtool_phys_id_state ;

/* Variables and functions */
#define  ETHTOOL_ID_ACTIVE 131 
#define  ETHTOOL_ID_INACTIVE 130 
#define  ETHTOOL_ID_OFF 129 
#define  ETHTOOL_ID_ON 128 
 struct pcnet32_private* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev,
			       enum ethtool_phys_id_state state)
{
	struct pcnet32_private *lp = FUNC0(dev);
	const struct pcnet32_access *a = lp->a;
	ulong ioaddr = dev->base_addr;
	unsigned long flags;
	int i;

	switch (state) {
	case ETHTOOL_ID_ACTIVE:
		/* Save the current value of the bcrs */
		FUNC1(&lp->lock, flags);
		for (i = 4; i < 8; i++)
			lp->save_regs[i - 4] = a->read_bcr(ioaddr, i);
		FUNC2(&lp->lock, flags);
		return 2;	/* cycle on/off twice per second */

	case ETHTOOL_ID_ON:
	case ETHTOOL_ID_OFF:
		/* Blink the led */
		FUNC1(&lp->lock, flags);
		for (i = 4; i < 8; i++)
			a->write_bcr(ioaddr, i, a->read_bcr(ioaddr, i) ^ 0x4000);
		FUNC2(&lp->lock, flags);
		break;

	case ETHTOOL_ID_INACTIVE:
		/* Restore the original value of the bcrs */
		FUNC1(&lp->lock, flags);
		for (i = 4; i < 8; i++)
			a->write_bcr(ioaddr, i, lp->save_regs[i - 4]);
		FUNC2(&lp->lock, flags);
	}
	return 0;
}