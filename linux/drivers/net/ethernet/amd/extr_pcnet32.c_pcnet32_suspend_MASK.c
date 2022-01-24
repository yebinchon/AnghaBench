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
struct pcnet32_private {scalar_t__ chip_version; int /*<<< orphan*/  lock; struct pcnet32_access* a; } ;
struct pcnet32_access {int (* read_csr ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* write_csr ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;} ;
struct net_device {int /*<<< orphan*/  base_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR5 ; 
 int CSR5_SUSPEND ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 scalar_t__ PCNET32_79C970A ; 
 int /*<<< orphan*/  hw ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct pcnet32_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct pcnet32_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct net_device *dev, unsigned long *flags,
			   int can_sleep)
{
	int csr5;
	struct pcnet32_private *lp = FUNC2(dev);
	const struct pcnet32_access *a = lp->a;
	ulong ioaddr = dev->base_addr;
	int ticks;

	/* really old chips have to be stopped. */
	if (lp->chip_version < PCNET32_79C970A)
		return 0;

	/* set SUSPEND (SPND) - CSR5 bit 0 */
	csr5 = a->read_csr(ioaddr, CSR5);
	a->write_csr(ioaddr, CSR5, csr5 | CSR5_SUSPEND);

	/* poll waiting for bit to be set */
	ticks = 0;
	while (!(a->read_csr(ioaddr, CSR5) & CSR5_SUSPEND)) {
		FUNC5(&lp->lock, *flags);
		if (can_sleep)
			FUNC1(1);
		else
			FUNC0(1);
		FUNC4(&lp->lock, *flags);
		ticks++;
		if (ticks > 200) {
			FUNC3(lp, hw, KERN_DEBUG, dev,
				     "Error getting into suspend!\n");
			return 0;
		}
	}
	return 1;
}