#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct msix_entry {int dummy; } ;
struct bnad {int cfg_flags; int msix_num; int /*<<< orphan*/  bna_lock; TYPE_3__* msix_table; TYPE_1__* pcidev; } ;
struct TYPE_8__ {int entry; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int BNAD_CF_MSIX ; 
 int BNAD_MAILBOX_MSIX_VECTORS ; 
 int BNAD_NUM_RXP ; 
 int BNAD_NUM_TXQ ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct bnad*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bnad*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 TYPE_3__* FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*,TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC10(struct bnad *bnad)
{
	int i, ret;
	unsigned long flags;

	FUNC8(&bnad->bna_lock, flags);
	if (!(bnad->cfg_flags & BNAD_CF_MSIX)) {
		FUNC9(&bnad->bna_lock, flags);
		return;
	}
	FUNC9(&bnad->bna_lock, flags);

	if (bnad->msix_table)
		return;

	bnad->msix_table =
		FUNC3(bnad->msix_num, sizeof(struct msix_entry), GFP_KERNEL);

	if (!bnad->msix_table)
		goto intx_mode;

	for (i = 0; i < bnad->msix_num; i++)
		bnad->msix_table[i].entry = i;

	ret = FUNC6(bnad->pcidev, bnad->msix_table,
				    1, bnad->msix_num);
	if (ret < 0) {
		goto intx_mode;
	} else if (ret < bnad->msix_num) {
		FUNC2(&bnad->pcidev->dev,
			 "%d MSI-X vectors allocated < %d requested\n",
			 ret, bnad->msix_num);

		FUNC8(&bnad->bna_lock, flags);
		/* ret = #of vectors that we got */
		FUNC0(bnad, (ret - BNAD_MAILBOX_MSIX_VECTORS) / 2,
			(ret - BNAD_MAILBOX_MSIX_VECTORS) / 2);
		FUNC9(&bnad->bna_lock, flags);

		bnad->msix_num = BNAD_NUM_TXQ + BNAD_NUM_RXP +
			 BNAD_MAILBOX_MSIX_VECTORS;

		if (bnad->msix_num > ret) {
			FUNC5(bnad->pcidev);
			goto intx_mode;
		}
	}

	FUNC7(bnad->pcidev, 0);

	return;

intx_mode:
	FUNC2(&bnad->pcidev->dev,
		 "MSI-X enable failed - operating in INTx mode\n");

	FUNC4(bnad->msix_table);
	bnad->msix_table = NULL;
	bnad->msix_num = 0;
	FUNC8(&bnad->bna_lock, flags);
	bnad->cfg_flags &= ~BNAD_CF_MSIX;
	FUNC1(bnad);
	FUNC9(&bnad->bna_lock, flags);
}