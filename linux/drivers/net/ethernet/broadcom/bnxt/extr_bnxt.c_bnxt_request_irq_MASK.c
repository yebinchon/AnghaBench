#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct cpu_rmap {int dummy; } ;
struct bnxt_irq {int vector; int requested; int have_cpumask; int /*<<< orphan*/  cpu_mask; int /*<<< orphan*/  name; int /*<<< orphan*/  handler; } ;
struct bnxt {int flags; int cp_nr_rings; TYPE_3__* dev; TYPE_1__* pdev; TYPE_2__** bnapi; struct bnxt_irq* irq_tbl; } ;
struct TYPE_7__ {struct cpu_rmap* rx_cpu_rmap; } ;
struct TYPE_6__ {scalar_t__ rx_ring; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int BNXT_FLAG_USING_MSIX ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long IRQF_SHARED ; 
 int FUNC0 (struct bnxt*,int) ; 
 int FUNC1 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct cpu_rmap*,int) ; 
 int FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,char*,int) ; 
 int FUNC9 (int,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct bnxt *bp)
{
	int i, j, rc = 0;
	unsigned long flags = 0;
#ifdef CONFIG_RFS_ACCEL
	struct cpu_rmap *rmap;
#endif

	rc = FUNC1(bp);
	if (rc) {
		FUNC7(bp->dev, "bnxt_setup_int_mode err: %x\n",
			   rc);
		return rc;
	}
#ifdef CONFIG_RFS_ACCEL
	rmap = bp->dev->rx_cpu_rmap;
#endif
	if (!(bp->flags & BNXT_FLAG_USING_MSIX))
		flags = IRQF_SHARED;

	for (i = 0, j = 0; i < bp->cp_nr_rings; i++) {
		int map_idx = FUNC0(bp, i);
		struct bnxt_irq *irq = &bp->irq_tbl[map_idx];

#ifdef CONFIG_RFS_ACCEL
		if (rmap && bp->bnapi[i]->rx_ring) {
			rc = irq_cpu_rmap_add(rmap, irq->vector);
			if (rc)
				netdev_warn(bp->dev, "failed adding irq rmap for ring %d\n",
					    j);
			j++;
		}
#endif
		rc = FUNC9(irq->vector, irq->handler, flags, irq->name,
				 bp->bnapi[i]);
		if (rc)
			break;

		irq->requested = 1;

		if (FUNC10(&irq->cpu_mask, GFP_KERNEL)) {
			int numa_node = FUNC4(&bp->pdev->dev);

			irq->have_cpumask = 1;
			FUNC3(FUNC2(i, numa_node),
					irq->cpu_mask);
			rc = FUNC6(irq->vector, irq->cpu_mask);
			if (rc) {
				FUNC8(bp->dev,
					    "Set affinity failed, IRQ = %d\n",
					    irq->vector);
				break;
			}
		}
	}
	return rc;
}