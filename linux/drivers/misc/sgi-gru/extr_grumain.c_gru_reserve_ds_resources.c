
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_state {int gs_dsr_map; } ;


 int GRU_DSR_AU ;
 unsigned long reserve_resources (int *,int,int ,char*) ;

unsigned long gru_reserve_ds_resources(struct gru_state *gru, int dsr_au_count,
           char *dsmap)
{
 return reserve_resources(&gru->gs_dsr_map, dsr_au_count, GRU_DSR_AU,
     dsmap);
}
