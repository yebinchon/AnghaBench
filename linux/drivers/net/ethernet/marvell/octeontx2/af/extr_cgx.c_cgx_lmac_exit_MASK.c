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
struct lmac {struct lmac* name; } ;
struct cgx {int lmac_count; int /*<<< orphan*/  pdev; struct lmac** lmac_idmap; int /*<<< orphan*/ * cgx_cmd_workq; } ;

/* Variables and functions */
 scalar_t__ CGX_LMAC_FWI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct lmac*) ; 
 int /*<<< orphan*/  FUNC3 (struct lmac*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct cgx *cgx)
{
	struct lmac *lmac;
	int i;

	if (cgx->cgx_cmd_workq) {
		FUNC1(cgx->cgx_cmd_workq);
		FUNC0(cgx->cgx_cmd_workq);
		cgx->cgx_cmd_workq = NULL;
	}

	/* Free all lmac related resources */
	for (i = 0; i < cgx->lmac_count; i++) {
		lmac = cgx->lmac_idmap[i];
		if (!lmac)
			continue;
		FUNC2(FUNC4(cgx->pdev, CGX_LMAC_FWI + i * 9), lmac);
		FUNC3(lmac->name);
		FUNC3(lmac);
	}

	return 0;
}