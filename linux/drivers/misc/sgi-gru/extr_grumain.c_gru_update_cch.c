
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_thread_state {int ts_ctxnum; scalar_t__ ts_user_options; void* ts_tlb_int_select; int ts_sizeavail; struct gru_state* ts_gru; } ;
struct gru_state {struct gru_thread_state** gs_gts; int gs_gru_base_vaddr; } ;
struct gru_context_configuration_handle {scalar_t__ state; int tfm_fault_bit_enable; void* tlb_int_select; int * sizeavail; } ;


 int BUG () ;
 scalar_t__ CCHSTATE_ACTIVE ;
 scalar_t__ GRU_OPT_MISS_FMM_INTR ;
 scalar_t__ GRU_OPT_MISS_FMM_POLL ;
 scalar_t__ cch_interrupt (struct gru_context_configuration_handle*) ;
 scalar_t__ cch_start (struct gru_context_configuration_handle*) ;
 struct gru_context_configuration_handle* get_cch (int ,int) ;
 void* gru_cpu_fault_map_id () ;
 int lock_cch_handle (struct gru_context_configuration_handle*) ;
 int unlock_cch_handle (struct gru_context_configuration_handle*) ;

int gru_update_cch(struct gru_thread_state *gts)
{
 struct gru_context_configuration_handle *cch;
 struct gru_state *gru = gts->ts_gru;
 int i, ctxnum = gts->ts_ctxnum, ret = 0;

 cch = get_cch(gru->gs_gru_base_vaddr, ctxnum);

 lock_cch_handle(cch);
 if (cch->state == CCHSTATE_ACTIVE) {
  if (gru->gs_gts[gts->ts_ctxnum] != gts)
   goto exit;
  if (cch_interrupt(cch))
   BUG();
  for (i = 0; i < 8; i++)
   cch->sizeavail[i] = gts->ts_sizeavail;
  gts->ts_tlb_int_select = gru_cpu_fault_map_id();
  cch->tlb_int_select = gru_cpu_fault_map_id();
  cch->tfm_fault_bit_enable =
    (gts->ts_user_options == GRU_OPT_MISS_FMM_POLL
      || gts->ts_user_options == GRU_OPT_MISS_FMM_INTR);
  if (cch_start(cch))
   BUG();
  ret = 1;
 }
exit:
 unlock_cch_handle(cch);
 return ret;
}
