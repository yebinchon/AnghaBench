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
typedef  int u32 ;
struct napi_struct {int dummy; } ;
struct cpsw_vector {int budget; int /*<<< orphan*/  ch; } ;
struct cpsw_common {TYPE_1__* wr_regs; struct cpsw_vector* txv; int /*<<< orphan*/  dma; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_en; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct napi_struct*) ; 
 struct cpsw_common* FUNC3 (struct napi_struct*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct napi_struct *napi_tx, int budget)
{
	u32			ch_map;
	int			num_tx, cur_budget, ch;
	struct cpsw_common	*cpsw = FUNC3(napi_tx);
	struct cpsw_vector	*txv;

	/* process every unprocessed channel */
	ch_map = FUNC1(cpsw->dma);
	for (ch = 0, num_tx = 0; ch_map & 0xff; ch_map <<= 1, ch++) {
		if (!(ch_map & 0x80))
			continue;

		txv = &cpsw->txv[ch];
		if (FUNC4(txv->budget > budget - num_tx))
			cur_budget = budget - num_tx;
		else
			cur_budget = txv->budget;

		num_tx += FUNC0(txv->ch, cur_budget);
		if (num_tx >= budget)
			break;
	}

	if (num_tx < budget) {
		FUNC2(napi_tx);
		FUNC5(0xff, &cpsw->wr_regs->tx_en);
	}

	return num_tx;
}