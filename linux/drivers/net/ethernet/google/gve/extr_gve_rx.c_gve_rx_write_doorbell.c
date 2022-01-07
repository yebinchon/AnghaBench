
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct gve_rx_ring {int fill_cnt; TYPE_1__* q_resources; } ;
struct gve_priv {int * db_bar2; } ;
struct TYPE_2__ {int db_index; } ;


 size_t be32_to_cpu (int ) ;
 int iowrite32be (int ,int *) ;

void gve_rx_write_doorbell(struct gve_priv *priv, struct gve_rx_ring *rx)
{
 u32 db_idx = be32_to_cpu(rx->q_resources->db_index);

 iowrite32be(rx->fill_cnt, &priv->db_bar2[db_idx]);
}
