#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct cas {int /*<<< orphan*/  rx_inuse_lock; int /*<<< orphan*/  rx_inuse_list; TYPE_1__*** rx_pages; } ;
struct TYPE_4__ {int /*<<< orphan*/  list; int /*<<< orphan*/  buffer; } ;
typedef  TYPE_1__ cas_page_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct cas*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline cas_page_t *FUNC5(struct cas *cp, const int index)
{
	cas_page_t *page = cp->rx_pages[1][index];
	cas_page_t *new;

	if (FUNC2(page->buffer) == 1)
		return page;

	new = FUNC0(cp);
	if (new) {
		FUNC3(&cp->rx_inuse_lock);
		FUNC1(&page->list, &cp->rx_inuse_list);
		FUNC4(&cp->rx_inuse_lock);
	}
	return new;
}