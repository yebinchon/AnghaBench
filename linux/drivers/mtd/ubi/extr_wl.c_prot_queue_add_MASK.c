#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  list; } ;
struct ubi_wl_entry {int /*<<< orphan*/  ec; int /*<<< orphan*/  pnum; TYPE_1__ u; } ;
struct ubi_device {int pq_head; int /*<<< orphan*/ * pq; } ;

/* Variables and functions */
 int UBI_PROT_QUEUE_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct ubi_device *ubi, struct ubi_wl_entry *e)
{
	int pq_tail = ubi->pq_head - 1;

	if (pq_tail < 0)
		pq_tail = UBI_PROT_QUEUE_LEN - 1;
	FUNC2(pq_tail >= 0 && pq_tail < UBI_PROT_QUEUE_LEN);
	FUNC1(&e->u.list, &ubi->pq[pq_tail]);
	FUNC0("added PEB %d EC %d to the protection queue", e->pnum, e->ec);
}