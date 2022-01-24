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
struct iwl_txq {int dummy; } ;
struct iwl_trans_pcie {int max_tbs; } ;
struct iwl_trans {TYPE_1__* trans_cfg; int /*<<< orphan*/  dev; } ;
struct iwl_tfh_tfd {scalar_t__ num_tbs; } ;
struct iwl_tfd {scalar_t__ num_tbs; } ;
struct iwl_cmd_meta {int tbs; } ;
struct TYPE_2__ {scalar_t__ use_tfh; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_trans*,char*,int) ; 
 struct iwl_trans_pcie* FUNC2 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct iwl_trans*,struct iwl_txq*,int) ; 
 int FUNC6 (struct iwl_trans*,void*) ; 
 int /*<<< orphan*/  FUNC7 (struct iwl_trans*,void*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct iwl_trans*,void*,int) ; 

__attribute__((used)) static void FUNC9(struct iwl_trans *trans,
			       struct iwl_cmd_meta *meta,
			       struct iwl_txq *txq, int index)
{
	struct iwl_trans_pcie *trans_pcie = FUNC2(trans);
	int i, num_tbs;
	void *tfd = FUNC5(trans, txq, index);

	/* Sanity check on number of chunks */
	num_tbs = FUNC6(trans, tfd);

	if (num_tbs > trans_pcie->max_tbs) {
		FUNC1(trans, "Too many chunks: %i\n", num_tbs);
		/* @todo issue fatal error, it is quite serious situation */
		return;
	}

	/* first TB is never freed - it's the bidirectional DMA data */

	for (i = 1; i < num_tbs; i++) {
		if (meta->tbs & FUNC0(i))
			FUNC3(trans->dev,
				       FUNC7(trans, tfd, i),
				       FUNC8(trans, tfd, i),
				       DMA_TO_DEVICE);
		else
			FUNC4(trans->dev,
					 FUNC7(trans, tfd,
								  i),
					 FUNC8(trans, tfd,
								 i),
					 DMA_TO_DEVICE);
	}

	meta->tbs = 0;

	if (trans->trans_cfg->use_tfh) {
		struct iwl_tfh_tfd *tfd_fh = (void *)tfd;

		tfd_fh->num_tbs = 0;
	} else {
		struct iwl_tfd *tfd_fh = (void *)tfd;

		tfd_fh->num_tbs = 0;
	}

}