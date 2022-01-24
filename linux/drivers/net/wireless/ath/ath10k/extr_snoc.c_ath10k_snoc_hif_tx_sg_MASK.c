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
typedef  size_t u8 ;
struct ath10k_snoc_pipe {struct ath10k_ce_pipe* ce_hdl; } ;
struct ath10k_snoc {struct ath10k_snoc_pipe* pipe_info; } ;
struct ath10k_hif_sg_item {int /*<<< orphan*/  transfer_id; int /*<<< orphan*/  len; int /*<<< orphan*/  paddr; int /*<<< orphan*/  transfer_context; } ;
struct ath10k_ce_pipe {int dummy; } ;
struct ath10k_ce {int /*<<< orphan*/  ce_lock; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_SNOC ; 
 int /*<<< orphan*/  CE_SEND_FLAG_GATHER ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k_ce_pipe*) ; 
 struct ath10k_ce* FUNC1 (struct ath10k*) ; 
 int FUNC2 (struct ath10k_ce_pipe*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct ath10k_snoc* FUNC4 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct ath10k *ar, u8 pipe_id,
				 struct ath10k_hif_sg_item *items, int n_items)
{
	struct ath10k_snoc *ar_snoc = FUNC4(ar);
	struct ath10k_ce *ce = FUNC1(ar);
	struct ath10k_snoc_pipe *snoc_pipe;
	struct ath10k_ce_pipe *ce_pipe;
	int err, i = 0;

	snoc_pipe = &ar_snoc->pipe_info[pipe_id];
	ce_pipe = snoc_pipe->ce_hdl;
	FUNC5(&ce->ce_lock);

	for (i = 0; i < n_items - 1; i++) {
		FUNC3(ar, ATH10K_DBG_SNOC,
			   "snoc tx item %d paddr %pad len %d n_items %d\n",
			   i, &items[i].paddr, items[i].len, n_items);

		err = FUNC2(ce_pipe,
					    items[i].transfer_context,
					    items[i].paddr,
					    items[i].len,
					    items[i].transfer_id,
					    CE_SEND_FLAG_GATHER);
		if (err)
			goto err;
	}

	FUNC3(ar, ATH10K_DBG_SNOC,
		   "snoc tx item %d paddr %pad len %d n_items %d\n",
		   i, &items[i].paddr, items[i].len, n_items);

	err = FUNC2(ce_pipe,
				    items[i].transfer_context,
				    items[i].paddr,
				    items[i].len,
				    items[i].transfer_id,
				    0);
	if (err)
		goto err;

	FUNC6(&ce->ce_lock);

	return 0;

err:
	for (; i > 0; i--)
		FUNC0(ce_pipe);

	FUNC6(&ce->ce_lock);
	return err;
}