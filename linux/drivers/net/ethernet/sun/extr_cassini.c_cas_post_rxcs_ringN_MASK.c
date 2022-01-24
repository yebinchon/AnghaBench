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
struct net_device {int dummy; } ;
struct cas_rx_comp {int dummy; } ;
struct cas {int* rx_cur; int* rx_new; int cas_flags; scalar_t__ regs; struct cas_rx_comp** init_rxcs; } ;

/* Variables and functions */
 int CAS_FLAG_REG_PLUS ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ REG_RX_COMP_HEAD ; 
 scalar_t__ REG_RX_COMP_TAIL ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cas_rx_comp*) ; 
 int /*<<< orphan*/  intr ; 
 int /*<<< orphan*/  FUNC3 (struct cas*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*,char*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev,
				struct cas *cp, int ring)
{
	struct cas_rx_comp *rxc = cp->init_rxcs[ring];
	int last, entry;

	last = cp->rx_cur[ring];
	entry = cp->rx_new[ring];
	FUNC3(cp, intr, KERN_DEBUG, dev,
		     "rxc[%d] interrupt, done: %d/%d\n",
		     ring, FUNC4(cp->regs + REG_RX_COMP_HEAD), entry);

	/* zero and re-mark descriptors */
	while (last != entry) {
		FUNC2(rxc + last);
		last = FUNC1(ring, last + 1);
	}
	cp->rx_cur[ring] = last;

	if (ring == 0)
		FUNC5(last, cp->regs + REG_RX_COMP_TAIL);
	else if (cp->cas_flags & CAS_FLAG_REG_PLUS)
		FUNC5(last, cp->regs + FUNC0(ring));
}