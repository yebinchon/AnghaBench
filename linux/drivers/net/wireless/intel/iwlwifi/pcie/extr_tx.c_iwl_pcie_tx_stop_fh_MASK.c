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
typedef  int /*<<< orphan*/  u32 ;
struct iwl_trans_pcie {int /*<<< orphan*/  irq_lock; } ;
struct iwl_trans {int dummy; } ;

/* Variables and functions */
 int FH_TCSR_CHNL_NUM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FH_TSSR_TX_STATUS_REG ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_trans*,char*,int,int /*<<< orphan*/ ) ; 
 struct iwl_trans_pcie* FUNC3 (struct iwl_trans*) ; 
 int FUNC4 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_trans*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_trans*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC7 (struct iwl_trans*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC8 (struct iwl_trans*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct iwl_trans *trans)
{
	struct iwl_trans_pcie *trans_pcie = FUNC3(trans);
	unsigned long flags;
	int ch, ret;
	u32 mask = 0;

	FUNC9(&trans_pcie->irq_lock);

	if (!FUNC6(trans, &flags))
		goto out;

	/* Stop each Tx DMA channel */
	for (ch = 0; ch < FH_TCSR_CHNL_NUM; ch++) {
		FUNC8(trans, FUNC0(ch), 0x0);
		mask |= FUNC1(ch);
	}

	/* Wait for DMA channels to be idle */
	ret = FUNC4(trans, FH_TSSR_TX_STATUS_REG, mask, mask, 5000);
	if (ret < 0)
		FUNC2(trans,
			"Failing on timeout while stopping DMA channel %d [0x%08x]\n",
			ch, FUNC5(trans, FH_TSSR_TX_STATUS_REG));

	FUNC7(trans, &flags);

out:
	FUNC10(&trans_pcie->irq_lock);
}