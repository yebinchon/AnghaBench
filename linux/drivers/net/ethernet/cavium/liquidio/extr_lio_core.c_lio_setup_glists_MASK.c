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
struct octnic_gather {int /*<<< orphan*/  list; scalar_t__ sg_dma_ptr; scalar_t__ sg; } ;
struct octeon_device {TYPE_1__* pci_dev; } ;
struct lio {int glist_entry_size; int tx_qsize; int /*<<< orphan*/ * glist; scalar_t__* glists_dma_base; scalar_t__* glists_virt_base; int /*<<< orphan*/ * glist_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OCTNIC_MAX_SG ; 
 int OCT_SG_ENTRY_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct octnic_gather* FUNC6 (int,int /*<<< orphan*/ ) ; 
 struct octnic_gather* FUNC7 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct lio*) ; 
 scalar_t__ FUNC9 (struct octeon_device*,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

int FUNC12(struct octeon_device *oct, struct lio *lio, int num_iqs)
{
	struct octnic_gather *g;
	int i, j;

	lio->glist_lock =
	    FUNC4(num_iqs, sizeof(*lio->glist_lock), GFP_KERNEL);
	if (!lio->glist_lock)
		return -ENOMEM;

	lio->glist =
	    FUNC4(num_iqs, sizeof(*lio->glist), GFP_KERNEL);
	if (!lio->glist) {
		FUNC5(lio->glist_lock);
		lio->glist_lock = NULL;
		return -ENOMEM;
	}

	lio->glist_entry_size =
		FUNC2((FUNC1(OCTNIC_MAX_SG) >> 2) * OCT_SG_ENTRY_SIZE);

	/* allocate memory to store virtual and dma base address of
	 * per glist consistent memory
	 */
	lio->glists_virt_base = FUNC4(num_iqs, sizeof(*lio->glists_virt_base),
					GFP_KERNEL);
	lio->glists_dma_base = FUNC4(num_iqs, sizeof(*lio->glists_dma_base),
				       GFP_KERNEL);

	if (!lio->glists_virt_base || !lio->glists_dma_base) {
		FUNC8(lio);
		return -ENOMEM;
	}

	for (i = 0; i < num_iqs; i++) {
		int numa_node = FUNC3(&oct->pci_dev->dev);

		FUNC11(&lio->glist_lock[i]);

		FUNC0(&lio->glist[i]);

		lio->glists_virt_base[i] =
			FUNC9(oct,
				      lio->glist_entry_size * lio->tx_qsize,
				      &lio->glists_dma_base[i]);

		if (!lio->glists_virt_base[i]) {
			FUNC8(lio);
			return -ENOMEM;
		}

		for (j = 0; j < lio->tx_qsize; j++) {
			g = FUNC7(sizeof(*g), GFP_KERNEL,
					 numa_node);
			if (!g)
				g = FUNC6(sizeof(*g), GFP_KERNEL);
			if (!g)
				break;

			g->sg = lio->glists_virt_base[i] +
				(j * lio->glist_entry_size);

			g->sg_dma_ptr = lio->glists_dma_base[i] +
					(j * lio->glist_entry_size);

			FUNC10(&g->list, &lio->glist[i]);
		}

		if (j != lio->tx_qsize) {
			FUNC8(lio);
			return -ENOMEM;
		}
	}

	return 0;
}