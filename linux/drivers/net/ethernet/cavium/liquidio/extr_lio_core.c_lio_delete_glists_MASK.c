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
typedef  scalar_t__ octnic_gather ;
struct lio {int glist_entry_size; int tx_qsize; scalar_t__* glist; scalar_t__* glists_dma_base; scalar_t__* glists_virt_base; TYPE_1__* oct_dev; scalar_t__* glist_lock; } ;
struct TYPE_2__ {int num_iqs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__*) ; 

void FUNC3(struct lio *lio)
{
	struct octnic_gather *g;
	int i;

	FUNC0(lio->glist_lock);
	lio->glist_lock = NULL;

	if (!lio->glist)
		return;

	for (i = 0; i < lio->oct_dev->num_iqs; i++) {
		do {
			g = (struct octnic_gather *)
			    FUNC2(&lio->glist[i]);
			FUNC0(g);
		} while (g);

		if (lio->glists_virt_base && lio->glists_virt_base[i] &&
		    lio->glists_dma_base && lio->glists_dma_base[i]) {
			FUNC1(lio->oct_dev,
				     lio->glist_entry_size * lio->tx_qsize,
				     lio->glists_virt_base[i],
				     lio->glists_dma_base[i]);
		}
	}

	FUNC0(lio->glists_virt_base);
	lio->glists_virt_base = NULL;

	FUNC0(lio->glists_dma_base);
	lio->glists_dma_base = NULL;

	FUNC0(lio->glist);
	lio->glist = NULL;
}