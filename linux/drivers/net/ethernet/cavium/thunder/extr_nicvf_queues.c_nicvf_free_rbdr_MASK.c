#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct rbdr_entry_t {scalar_t__ buf_addr; } ;
struct TYPE_4__ {int q_len; int /*<<< orphan*/  base; } ;
struct rbdr {int enable; int head; int tail; int pgcnt; TYPE_2__ dmem; scalar_t__ is_xdp; struct pgcache* pgcache; } ;
struct pgcache {scalar_t__ page; scalar_t__ ref_count; } ;
struct nicvf {TYPE_1__* pdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_ATTR_SKIP_CPU_SYNC ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 struct rbdr_entry_t* FUNC0 (struct rbdr*,int) ; 
 int /*<<< orphan*/  RCV_FRAG_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nicvf*,TYPE_2__*) ; 
 scalar_t__ FUNC3 (struct nicvf*,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct nicvf *nic, struct rbdr *rbdr)
{
	int head, tail;
	u64 buf_addr, phys_addr;
	struct pgcache *pgcache;
	struct rbdr_entry_t *desc;

	if (!rbdr)
		return;

	rbdr->enable = false;
	if (!rbdr->dmem.base)
		return;

	head = rbdr->head;
	tail = rbdr->tail;

	/* Release page references */
	while (head != tail) {
		desc = FUNC0(rbdr, head);
		buf_addr = desc->buf_addr;
		phys_addr = FUNC3(nic, buf_addr);
		FUNC1(&nic->pdev->dev, buf_addr, RCV_FRAG_LEN,
				     DMA_FROM_DEVICE, DMA_ATTR_SKIP_CPU_SYNC);
		if (phys_addr)
			FUNC7(FUNC9(FUNC6(phys_addr)));
		head++;
		head &= (rbdr->dmem.q_len - 1);
	}
	/* Release buffer of tail desc */
	desc = FUNC0(rbdr, tail);
	buf_addr = desc->buf_addr;
	phys_addr = FUNC3(nic, buf_addr);
	FUNC1(&nic->pdev->dev, buf_addr, RCV_FRAG_LEN,
			     DMA_FROM_DEVICE, DMA_ATTR_SKIP_CPU_SYNC);
	if (phys_addr)
		FUNC7(FUNC9(FUNC6(phys_addr)));

	/* Sync page cache info */
	FUNC8();

	/* Release additional page references held for recycling */
	head = 0;
	while (head < rbdr->pgcnt) {
		pgcache = &rbdr->pgcache[head];
		if (pgcache->page && FUNC4(pgcache->page) != 0) {
			if (rbdr->is_xdp) {
				FUNC5(pgcache->page,
					     pgcache->ref_count - 1);
			}
			FUNC7(pgcache->page);
		}
		head++;
	}

	/* Free RBDR ring */
	FUNC2(nic, &rbdr->dmem);
}