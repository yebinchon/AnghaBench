
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ucc_geth_private {int * ug_regs; int ind_hash_q; int group_hash_q; TYPE_2__* p_init_enet_param_shadow; TYPE_1__* ug_info; int * p_rx_bd_qs_tbl; int rx_bd_qs_tbl_offset; int * p_rx_irq_coalescing_tbl; int rx_irq_coalescing_tbl_offset; int * p_rx_fw_statistics_pram; int rx_fw_statistics_pram_offset; int * p_tx_fw_statistics_pram; int tx_fw_statistics_pram_offset; int * p_scheduler; int scheduler_offset; int * p_send_q_mem_reg; int send_q_mem_reg_offset; int * p_tx_glbl_pram; int tx_glbl_pram_offset; int * p_rx_glbl_pram; int rx_glbl_pram_offset; int * p_exf_glbl_param; int exf_glbl_param_offset; int * p_thread_data_rx; int thread_dat_rx_offset; int * p_thread_data_tx; int thread_dat_tx_offset; int * uccf; } ;
struct TYPE_4__ {int * txthread; int * rxthread; } ;
struct TYPE_3__ {int riscTx; int riscRx; } ;


 int ENET_ADDR_CONT_ENTRY (int ) ;
 int ENET_INIT_PARAM_MAX_ENTRIES_RX ;
 int ENET_INIT_PARAM_MAX_ENTRIES_TX ;
 int dequeue (int *) ;
 int iounmap (int *) ;
 int kfree (TYPE_2__*) ;
 int list_empty (int *) ;
 int put_enet_addr_container (int ) ;
 int qe_muram_free (int ) ;
 int return_init_enet_entries (struct ucc_geth_private*,int *,int ,int ,int) ;
 int ucc_fast_free (int *) ;
 int ucc_geth_free_rx (struct ucc_geth_private*) ;
 int ucc_geth_free_tx (struct ucc_geth_private*) ;

__attribute__((used)) static void ucc_geth_memclean(struct ucc_geth_private *ugeth)
{
 if (!ugeth)
  return;

 if (ugeth->uccf) {
  ucc_fast_free(ugeth->uccf);
  ugeth->uccf = ((void*)0);
 }

 if (ugeth->p_thread_data_tx) {
  qe_muram_free(ugeth->thread_dat_tx_offset);
  ugeth->p_thread_data_tx = ((void*)0);
 }
 if (ugeth->p_thread_data_rx) {
  qe_muram_free(ugeth->thread_dat_rx_offset);
  ugeth->p_thread_data_rx = ((void*)0);
 }
 if (ugeth->p_exf_glbl_param) {
  qe_muram_free(ugeth->exf_glbl_param_offset);
  ugeth->p_exf_glbl_param = ((void*)0);
 }
 if (ugeth->p_rx_glbl_pram) {
  qe_muram_free(ugeth->rx_glbl_pram_offset);
  ugeth->p_rx_glbl_pram = ((void*)0);
 }
 if (ugeth->p_tx_glbl_pram) {
  qe_muram_free(ugeth->tx_glbl_pram_offset);
  ugeth->p_tx_glbl_pram = ((void*)0);
 }
 if (ugeth->p_send_q_mem_reg) {
  qe_muram_free(ugeth->send_q_mem_reg_offset);
  ugeth->p_send_q_mem_reg = ((void*)0);
 }
 if (ugeth->p_scheduler) {
  qe_muram_free(ugeth->scheduler_offset);
  ugeth->p_scheduler = ((void*)0);
 }
 if (ugeth->p_tx_fw_statistics_pram) {
  qe_muram_free(ugeth->tx_fw_statistics_pram_offset);
  ugeth->p_tx_fw_statistics_pram = ((void*)0);
 }
 if (ugeth->p_rx_fw_statistics_pram) {
  qe_muram_free(ugeth->rx_fw_statistics_pram_offset);
  ugeth->p_rx_fw_statistics_pram = ((void*)0);
 }
 if (ugeth->p_rx_irq_coalescing_tbl) {
  qe_muram_free(ugeth->rx_irq_coalescing_tbl_offset);
  ugeth->p_rx_irq_coalescing_tbl = ((void*)0);
 }
 if (ugeth->p_rx_bd_qs_tbl) {
  qe_muram_free(ugeth->rx_bd_qs_tbl_offset);
  ugeth->p_rx_bd_qs_tbl = ((void*)0);
 }
 if (ugeth->p_init_enet_param_shadow) {
  return_init_enet_entries(ugeth,
      &(ugeth->p_init_enet_param_shadow->
        rxthread[0]),
      ENET_INIT_PARAM_MAX_ENTRIES_RX,
      ugeth->ug_info->riscRx, 1);
  return_init_enet_entries(ugeth,
      &(ugeth->p_init_enet_param_shadow->
        txthread[0]),
      ENET_INIT_PARAM_MAX_ENTRIES_TX,
      ugeth->ug_info->riscTx, 0);
  kfree(ugeth->p_init_enet_param_shadow);
  ugeth->p_init_enet_param_shadow = ((void*)0);
 }
 ucc_geth_free_tx(ugeth);
 ucc_geth_free_rx(ugeth);
 while (!list_empty(&ugeth->group_hash_q))
  put_enet_addr_container(ENET_ADDR_CONT_ENTRY
     (dequeue(&ugeth->group_hash_q)));
 while (!list_empty(&ugeth->ind_hash_q))
  put_enet_addr_container(ENET_ADDR_CONT_ENTRY
     (dequeue(&ugeth->ind_hash_q)));
 if (ugeth->ug_regs) {
  iounmap(ugeth->ug_regs);
  ugeth->ug_regs = ((void*)0);
 }
}
