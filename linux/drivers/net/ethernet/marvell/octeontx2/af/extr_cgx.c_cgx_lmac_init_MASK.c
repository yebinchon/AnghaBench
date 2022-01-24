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
struct lmac {int lmac_id; void* name; int /*<<< orphan*/  event_cb_lock; int /*<<< orphan*/  cmd_lock; int /*<<< orphan*/  wq_cmd_cmplt; struct cgx* cgx; } ;
struct cgx {int lmac_count; int cgx_id; struct lmac** lmac_idmap; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CGXX_CMRX_INT_ENA_W1S ; 
 int /*<<< orphan*/  CGXX_CMRX_RX_LMACS ; 
 scalar_t__ CGX_LMAC_FWI ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FW_CGX_INT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_LMAC_PER_CGX ; 
 int /*<<< orphan*/  cgx_fwi_event_handler ; 
 int FUNC0 (struct cgx*) ; 
 int FUNC1 (struct cgx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cgx*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,struct lmac*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (void*,char*,int,int) ; 

__attribute__((used)) static int FUNC10(struct cgx *cgx)
{
	struct lmac *lmac;
	int i, err;

	cgx->lmac_count = FUNC1(cgx, 0, CGXX_CMRX_RX_LMACS) & 0x7;
	if (cgx->lmac_count > MAX_LMAC_PER_CGX)
		cgx->lmac_count = MAX_LMAC_PER_CGX;

	for (i = 0; i < cgx->lmac_count; i++) {
		lmac = FUNC4(1, sizeof(struct lmac), GFP_KERNEL);
		if (!lmac)
			return -ENOMEM;
		lmac->name = FUNC4(1, sizeof("cgx_fwi_xxx_yyy"), GFP_KERNEL);
		if (!lmac->name)
			return -ENOMEM;
		FUNC9(lmac->name, "cgx_fwi_%d_%d", cgx->cgx_id, i);
		lmac->lmac_id = i;
		lmac->cgx = cgx;
		FUNC3(&lmac->wq_cmd_cmplt);
		FUNC5(&lmac->cmd_lock);
		FUNC8(&lmac->event_cb_lock);
		err = FUNC7(FUNC6(cgx->pdev,
						 CGX_LMAC_FWI + i * 9),
				   cgx_fwi_event_handler, 0, lmac->name, lmac);
		if (err)
			return err;

		/* Enable interrupt */
		FUNC2(cgx, lmac->lmac_id, CGXX_CMRX_INT_ENA_W1S,
			  FW_CGX_INT);

		/* Add reference */
		cgx->lmac_idmap[i] = lmac;
	}

	return FUNC0(cgx);
}