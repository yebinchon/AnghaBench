
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath10k_ce_pipe {int attr_flags; scalar_t__ recv_cb; scalar_t__ send_cb; struct ath10k* ar; int ctrl_addr; } ;
struct ath10k {int dummy; } ;


 int CE_ATTR_DIS_INTR ;
 int ath10k_ce_copy_complete_inter_enable (struct ath10k*,int ) ;
 int ath10k_ce_copy_complete_intr_disable (struct ath10k*,int ) ;
 int ath10k_ce_watermark_intr_disable (struct ath10k*,int ) ;

__attribute__((used)) static void ath10k_ce_per_engine_handler_adjust(struct ath10k_ce_pipe *ce_state)
{
 u32 ctrl_addr = ce_state->ctrl_addr;
 struct ath10k *ar = ce_state->ar;
 bool disable_copy_compl_intr = ce_state->attr_flags & CE_ATTR_DIS_INTR;

 if ((!disable_copy_compl_intr) &&
     (ce_state->send_cb || ce_state->recv_cb))
  ath10k_ce_copy_complete_inter_enable(ar, ctrl_addr);
 else
  ath10k_ce_copy_complete_intr_disable(ar, ctrl_addr);

 ath10k_ce_watermark_intr_disable(ar, ctrl_addr);
}
