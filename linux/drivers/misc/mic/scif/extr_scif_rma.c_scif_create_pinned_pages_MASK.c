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
struct scif_pinned_pages {int prot; int /*<<< orphan*/  magic; void* pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCIFEP_MAGIC ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct scif_pinned_pages*,int) ; 
 void* FUNC2 (int) ; 

__attribute__((used)) static struct scif_pinned_pages *
FUNC3(int nr_pages, int prot)
{
	struct scif_pinned_pages *pin;

	FUNC0();
	pin = FUNC2(sizeof(*pin));
	if (!pin)
		goto error;

	pin->pages = FUNC2(nr_pages * sizeof(*pin->pages));
	if (!pin->pages)
		goto error_free_pinned_pages;

	pin->prot = prot;
	pin->magic = SCIFEP_MAGIC;
	return pin;

error_free_pinned_pages:
	FUNC1(pin, sizeof(*pin));
error:
	return NULL;
}