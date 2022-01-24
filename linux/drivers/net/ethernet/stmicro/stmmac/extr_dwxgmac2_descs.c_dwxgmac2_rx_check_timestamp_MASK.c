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
struct dma_desc {int des0; int des1; int /*<<< orphan*/  des3; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int XGMAC_RDES3_CTXT ; 
 unsigned int XGMAC_RDES3_OWN ; 
 unsigned int XGMAC_RDES3_TSA ; 
 unsigned int XGMAC_RDES3_TSD ; 
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(void *desc)
{
	struct dma_desc *p = (struct dma_desc *)desc;
	unsigned int rdes3 = FUNC1(p->des3);
	bool desc_valid, ts_valid;

	FUNC0();

	desc_valid = !(rdes3 & XGMAC_RDES3_OWN) && (rdes3 & XGMAC_RDES3_CTXT);
	ts_valid = !(rdes3 & XGMAC_RDES3_TSD) && (rdes3 & XGMAC_RDES3_TSA);

	if (FUNC2(desc_valid && ts_valid)) {
		if ((p->des0 == 0xffffffff) && (p->des1 == 0xffffffff))
			return -EINVAL;
		return 0;
	}

	return -EINVAL;
}