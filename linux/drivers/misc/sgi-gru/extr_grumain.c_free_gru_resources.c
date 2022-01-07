
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_thread_state {int ts_dsr_map; int ts_cbr_map; } ;
struct gru_state {int gs_dsr_map; int gs_cbr_map; int gs_active_contexts; } ;



__attribute__((used)) static void free_gru_resources(struct gru_state *gru,
          struct gru_thread_state *gts)
{
 gru->gs_active_contexts--;
 gru->gs_cbr_map |= gts->ts_cbr_map;
 gru->gs_dsr_map |= gts->ts_dsr_map;
}
