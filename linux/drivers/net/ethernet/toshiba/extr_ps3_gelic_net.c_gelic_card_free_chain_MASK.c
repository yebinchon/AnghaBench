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
struct gelic_descr {scalar_t__ bus_addr; struct gelic_descr* next; } ;
struct gelic_card {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  GELIC_DESCR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct gelic_card*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct gelic_card *card,
				  struct gelic_descr *descr_in)
{
	struct gelic_descr *descr;

	for (descr = descr_in; descr && descr->bus_addr; descr = descr->next) {
		FUNC1(FUNC0(card), descr->bus_addr,
				 GELIC_DESCR_SIZE, DMA_BIDIRECTIONAL);
		descr->bus_addr = 0;
	}
}