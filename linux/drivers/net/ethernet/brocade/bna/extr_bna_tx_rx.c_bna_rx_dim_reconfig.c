
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int ** dim_vector; } ;
struct bna {TYPE_1__ rx_mod; } ;


 int BNA_BIAS_T_MAX ;
 int BNA_LOAD_T_MAX ;

void
bna_rx_dim_reconfig(struct bna *bna, const u32 vector[][BNA_BIAS_T_MAX])
{
 int i, j;

 for (i = 0; i < BNA_LOAD_T_MAX; i++)
  for (j = 0; j < BNA_BIAS_T_MAX; j++)
   bna->rx_mod.dim_vector[i][j] = vector[i][j];
}
