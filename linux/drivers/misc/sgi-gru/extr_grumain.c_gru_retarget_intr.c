
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_thread_state {scalar_t__ ts_tlb_int_select; } ;


 scalar_t__ gru_cpu_fault_map_id () ;
 int gru_dbg (int ,char*,scalar_t__,scalar_t__) ;
 int gru_update_cch (struct gru_thread_state*) ;
 int grudev ;

__attribute__((used)) static int gru_retarget_intr(struct gru_thread_state *gts)
{
 if (gts->ts_tlb_int_select < 0
     || gts->ts_tlb_int_select == gru_cpu_fault_map_id())
  return 0;

 gru_dbg(grudev, "retarget from %d to %d\n", gts->ts_tlb_int_select,
  gru_cpu_fault_map_id());
 return gru_update_cch(gts);
}
