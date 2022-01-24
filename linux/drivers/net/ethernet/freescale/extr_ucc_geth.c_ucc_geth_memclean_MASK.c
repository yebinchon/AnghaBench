#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ucc_geth_private {int /*<<< orphan*/ * ug_regs; int /*<<< orphan*/  ind_hash_q; int /*<<< orphan*/  group_hash_q; TYPE_2__* p_init_enet_param_shadow; TYPE_1__* ug_info; int /*<<< orphan*/ * p_rx_bd_qs_tbl; int /*<<< orphan*/  rx_bd_qs_tbl_offset; int /*<<< orphan*/ * p_rx_irq_coalescing_tbl; int /*<<< orphan*/  rx_irq_coalescing_tbl_offset; int /*<<< orphan*/ * p_rx_fw_statistics_pram; int /*<<< orphan*/  rx_fw_statistics_pram_offset; int /*<<< orphan*/ * p_tx_fw_statistics_pram; int /*<<< orphan*/  tx_fw_statistics_pram_offset; int /*<<< orphan*/ * p_scheduler; int /*<<< orphan*/  scheduler_offset; int /*<<< orphan*/ * p_send_q_mem_reg; int /*<<< orphan*/  send_q_mem_reg_offset; int /*<<< orphan*/ * p_tx_glbl_pram; int /*<<< orphan*/  tx_glbl_pram_offset; int /*<<< orphan*/ * p_rx_glbl_pram; int /*<<< orphan*/  rx_glbl_pram_offset; int /*<<< orphan*/ * p_exf_glbl_param; int /*<<< orphan*/  exf_glbl_param_offset; int /*<<< orphan*/ * p_thread_data_rx; int /*<<< orphan*/  thread_dat_rx_offset; int /*<<< orphan*/ * p_thread_data_tx; int /*<<< orphan*/  thread_dat_tx_offset; int /*<<< orphan*/ * uccf; } ;
struct TYPE_4__ {int /*<<< orphan*/ * txthread; int /*<<< orphan*/ * rxthread; } ;
struct TYPE_3__ {int /*<<< orphan*/  riscTx; int /*<<< orphan*/  riscRx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENET_INIT_PARAM_MAX_ENTRIES_RX ; 
 int /*<<< orphan*/  ENET_INIT_PARAM_MAX_ENTRIES_TX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ucc_geth_private*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct ucc_geth_private*) ; 
 int /*<<< orphan*/  FUNC10 (struct ucc_geth_private*) ; 

__attribute__((used)) static void FUNC11(struct ucc_geth_private *ugeth)
{
	if (!ugeth)
		return;

	if (ugeth->uccf) {
		FUNC8(ugeth->uccf);
		ugeth->uccf = NULL;
	}

	if (ugeth->p_thread_data_tx) {
		FUNC6(ugeth->thread_dat_tx_offset);
		ugeth->p_thread_data_tx = NULL;
	}
	if (ugeth->p_thread_data_rx) {
		FUNC6(ugeth->thread_dat_rx_offset);
		ugeth->p_thread_data_rx = NULL;
	}
	if (ugeth->p_exf_glbl_param) {
		FUNC6(ugeth->exf_glbl_param_offset);
		ugeth->p_exf_glbl_param = NULL;
	}
	if (ugeth->p_rx_glbl_pram) {
		FUNC6(ugeth->rx_glbl_pram_offset);
		ugeth->p_rx_glbl_pram = NULL;
	}
	if (ugeth->p_tx_glbl_pram) {
		FUNC6(ugeth->tx_glbl_pram_offset);
		ugeth->p_tx_glbl_pram = NULL;
	}
	if (ugeth->p_send_q_mem_reg) {
		FUNC6(ugeth->send_q_mem_reg_offset);
		ugeth->p_send_q_mem_reg = NULL;
	}
	if (ugeth->p_scheduler) {
		FUNC6(ugeth->scheduler_offset);
		ugeth->p_scheduler = NULL;
	}
	if (ugeth->p_tx_fw_statistics_pram) {
		FUNC6(ugeth->tx_fw_statistics_pram_offset);
		ugeth->p_tx_fw_statistics_pram = NULL;
	}
	if (ugeth->p_rx_fw_statistics_pram) {
		FUNC6(ugeth->rx_fw_statistics_pram_offset);
		ugeth->p_rx_fw_statistics_pram = NULL;
	}
	if (ugeth->p_rx_irq_coalescing_tbl) {
		FUNC6(ugeth->rx_irq_coalescing_tbl_offset);
		ugeth->p_rx_irq_coalescing_tbl = NULL;
	}
	if (ugeth->p_rx_bd_qs_tbl) {
		FUNC6(ugeth->rx_bd_qs_tbl_offset);
		ugeth->p_rx_bd_qs_tbl = NULL;
	}
	if (ugeth->p_init_enet_param_shadow) {
		FUNC7(ugeth,
					 &(ugeth->p_init_enet_param_shadow->
					   rxthread[0]),
					 ENET_INIT_PARAM_MAX_ENTRIES_RX,
					 ugeth->ug_info->riscRx, 1);
		FUNC7(ugeth,
					 &(ugeth->p_init_enet_param_shadow->
					   txthread[0]),
					 ENET_INIT_PARAM_MAX_ENTRIES_TX,
					 ugeth->ug_info->riscTx, 0);
		FUNC3(ugeth->p_init_enet_param_shadow);
		ugeth->p_init_enet_param_shadow = NULL;
	}
	FUNC10(ugeth);
	FUNC9(ugeth);
	while (!FUNC4(&ugeth->group_hash_q))
		FUNC5(FUNC0
					(FUNC1(&ugeth->group_hash_q)));
	while (!FUNC4(&ugeth->ind_hash_q))
		FUNC5(FUNC0
					(FUNC1(&ugeth->ind_hash_q)));
	if (ugeth->ug_regs) {
		FUNC2(ugeth->ug_regs);
		ugeth->ug_regs = NULL;
	}
}