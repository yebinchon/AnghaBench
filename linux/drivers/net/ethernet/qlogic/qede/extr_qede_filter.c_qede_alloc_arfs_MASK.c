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
struct qede_dev {TYPE_2__* arfs; TYPE_1__* ndev; } ;
struct TYPE_4__ {struct TYPE_4__* arfs_fltr_bmap; int /*<<< orphan*/  arfs_list_lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  rx_cpu_rmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qede_dev*,int) ; 
 int QEDE_RFS_FLW_MASK ; 
 int /*<<< orphan*/  QEDE_RFS_MAX_FLTR ; 
 int /*<<< orphan*/  FUNC3 (struct qede_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 void* FUNC8 (int) ; 

int FUNC9(struct qede_dev *edev)
{
	int i;

	edev->arfs = FUNC8(sizeof(*edev->arfs));
	if (!edev->arfs)
		return -ENOMEM;

	FUNC6(&edev->arfs->arfs_list_lock);

	for (i = 0; i <= QEDE_RFS_FLW_MASK; i++)
		FUNC1(FUNC2(edev, i));

	edev->arfs->arfs_fltr_bmap =
		FUNC8(FUNC5(sizeof(long),
				   FUNC0(QEDE_RFS_MAX_FLTR)));
	if (!edev->arfs->arfs_fltr_bmap) {
		FUNC7(edev->arfs);
		edev->arfs = NULL;
		return -ENOMEM;
	}

#ifdef CONFIG_RFS_ACCEL
	edev->ndev->rx_cpu_rmap = alloc_irq_cpu_rmap(QEDE_RSS_COUNT(edev));
	if (!edev->ndev->rx_cpu_rmap) {
		vfree(edev->arfs->arfs_fltr_bmap);
		edev->arfs->arfs_fltr_bmap = NULL;
		vfree(edev->arfs);
		edev->arfs = NULL;
		return -ENOMEM;
	}
#endif
	return 0;
}