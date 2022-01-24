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
struct iwl_trans_pcie {int max_tbs; } ;
struct iwl_trans {int /*<<< orphan*/  dev; } ;
struct iwl_tfh_tfd {int /*<<< orphan*/  num_tbs; TYPE_1__* tbs; } ;
struct iwl_cmd_meta {int tbs; } ;
struct TYPE_2__ {int /*<<< orphan*/  tb_len; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_trans*,char*,int) ; 
 struct iwl_trans_pcie* FUNC2 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct iwl_trans*,struct iwl_tfh_tfd*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct iwl_trans *trans,
				    struct iwl_cmd_meta *meta,
				    struct iwl_tfh_tfd *tfd)
{
	struct iwl_trans_pcie *trans_pcie = FUNC2(trans);
	int i, num_tbs;

	/* Sanity check on number of chunks */
	num_tbs = FUNC5(trans, tfd);

	if (num_tbs > trans_pcie->max_tbs) {
		FUNC1(trans, "Too many chunks: %i\n", num_tbs);
		return;
	}

	/* first TB is never freed - it's the bidirectional DMA data */
	for (i = 1; i < num_tbs; i++) {
		if (meta->tbs & FUNC0(i))
			FUNC3(trans->dev,
				       FUNC7(tfd->tbs[i].addr),
				       FUNC6(tfd->tbs[i].tb_len),
				       DMA_TO_DEVICE);
		else
			FUNC4(trans->dev,
					 FUNC7(tfd->tbs[i].addr),
					 FUNC6(tfd->tbs[i].tb_len),
					 DMA_TO_DEVICE);
	}

	tfd->num_tbs = 0;
}