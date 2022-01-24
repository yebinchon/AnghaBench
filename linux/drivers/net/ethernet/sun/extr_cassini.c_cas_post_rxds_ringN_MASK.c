#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct cas {unsigned int* rx_old; int cas_flags; int* rx_last; scalar_t__ regs; TYPE_1__** init_rxds; int /*<<< orphan*/  rx_inuse_lock; int /*<<< orphan*/  rx_inuse_list; int /*<<< orphan*/  link_timer; int /*<<< orphan*/  dev; TYPE_2__*** rx_pages; } ;
struct TYPE_5__ {int /*<<< orphan*/  dma_addr; int /*<<< orphan*/  list; int /*<<< orphan*/  buffer; } ;
typedef  TYPE_2__ cas_page_t ;
struct TYPE_4__ {int /*<<< orphan*/  buffer; } ;

/* Variables and functions */
 int CAS_FLAG_REG_PLUS ; 
 int FUNC0 (int) ; 
 scalar_t__ CAS_LINK_FAST_TIMEOUT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int N_RX_DESC_RINGS ; 
 scalar_t__ REG_PLUS_RX_KICK1 ; 
 scalar_t__ REG_RX_KICK ; 
 unsigned int FUNC1 (int,unsigned int) ; 
 TYPE_2__* FUNC2 (struct cas*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  intr ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct cas*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,unsigned int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC12(struct cas *cp, int ring, int num)
{
	unsigned int entry, last, count, released;
	int cluster;
	cas_page_t **page = cp->rx_pages[ring];

	entry = cp->rx_old[ring];

	FUNC6(cp, intr, KERN_DEBUG, cp->dev,
		     "rxd[%d] interrupt, done: %d\n", ring, entry);

	cluster = -1;
	count = entry & 0x3;
	last = FUNC1(ring, num ? entry + num - 4: entry - 4);
	released = 0;
	while (entry != last) {
		/* make a new buffer if it's still in use */
		if (FUNC7(page[entry]->buffer) > 1) {
			cas_page_t *new = FUNC2(cp);
			if (!new) {
				/* let the timer know that we need to
				 * do this again
				 */
				cp->cas_flags |= FUNC0(ring);
				if (!FUNC10(&cp->link_timer))
					FUNC5(&cp->link_timer, jiffies +
						  CAS_LINK_FAST_TIMEOUT);
				cp->rx_old[ring]  = entry;
				cp->rx_last[ring] = num ? num - released : 0;
				return -ENOMEM;
			}
			FUNC8(&cp->rx_inuse_lock);
			FUNC4(&page[entry]->list, &cp->rx_inuse_list);
			FUNC9(&cp->rx_inuse_lock);
			cp->init_rxds[ring][entry].buffer =
				FUNC3(new->dma_addr);
			page[entry] = new;

		}

		if (++count == 4) {
			cluster = entry;
			count = 0;
		}
		released++;
		entry = FUNC1(ring, entry + 1);
	}
	cp->rx_old[ring] = entry;

	if (cluster < 0)
		return 0;

	if (ring == 0)
		FUNC11(cluster, cp->regs + REG_RX_KICK);
	else if ((N_RX_DESC_RINGS > 1) &&
		 (cp->cas_flags & CAS_FLAG_REG_PLUS))
		FUNC11(cluster, cp->regs + REG_PLUS_RX_KICK1);
	return 0;
}