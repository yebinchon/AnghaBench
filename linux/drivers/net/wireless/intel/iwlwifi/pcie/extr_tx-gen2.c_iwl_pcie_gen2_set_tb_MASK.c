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
typedef  int u16 ;
struct iwl_trans_pcie {scalar_t__ max_tbs; } ;
struct iwl_trans {int dummy; } ;
struct iwl_tfh_tfd {void* num_tbs; struct iwl_tfh_tb* tbs; } ;
struct iwl_tfh_tb {void* tb_len; int /*<<< orphan*/  addr; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_trans*,char*,scalar_t__) ; 
 int IWL_TFH_NUM_TBS ; 
 struct iwl_trans_pcie* FUNC1 (struct iwl_trans*) ; 
 scalar_t__ FUNC2 (int) ; 
 void* FUNC3 (int) ; 
 int FUNC4 (struct iwl_trans*,struct iwl_tfh_tfd*) ; 
 scalar_t__ FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct iwl_trans *trans,
				struct iwl_tfh_tfd *tfd, dma_addr_t addr,
				u16 len)
{
	struct iwl_trans_pcie *trans_pcie = FUNC1(trans);
	int idx = FUNC4(trans, tfd);
	struct iwl_tfh_tb *tb;

	if (FUNC2(idx >= IWL_TFH_NUM_TBS))
		return -EINVAL;
	tb = &tfd->tbs[idx];

	/* Each TFD can point to a maximum max_tbs Tx buffers */
	if (FUNC5(tfd->num_tbs) >= trans_pcie->max_tbs) {
		FUNC0(trans, "Error can not send more than %d chunks\n",
			trans_pcie->max_tbs);
		return -EINVAL;
	}

	FUNC6(addr, &tb->addr);
	tb->tb_len = FUNC3(len);

	tfd->num_tbs = FUNC3(idx + 1);

	return idx;
}