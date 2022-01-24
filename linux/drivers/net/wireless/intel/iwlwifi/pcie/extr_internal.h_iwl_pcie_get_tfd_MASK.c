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
struct iwl_txq {void* tfds; } ;
struct iwl_trans_pcie {int tfd_size; } ;
struct iwl_trans {TYPE_1__* trans_cfg; } ;
struct TYPE_2__ {scalar_t__ use_tfh; } ;

/* Variables and functions */
 struct iwl_trans_pcie* FUNC0 (struct iwl_trans*) ; 
 int FUNC1 (struct iwl_txq*,int) ; 

__attribute__((used)) static inline void *FUNC2(struct iwl_trans *trans,
				     struct iwl_txq *txq, int idx)
{
	struct iwl_trans_pcie *trans_pcie = FUNC0(trans);

	if (trans->trans_cfg->use_tfh)
		idx = FUNC1(txq, idx);

	return txq->tfds + trans_pcie->tfd_size * idx;
}