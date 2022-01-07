
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gve_queue_resources {int db_index; } ;
struct gve_priv {int * db_bar2; } ;


 size_t be32_to_cpu (int ) ;
 int iowrite32be (int ,int *) ;

__attribute__((used)) static inline void gve_tx_put_doorbell(struct gve_priv *priv,
           struct gve_queue_resources *q_resources,
           u32 val)
{
 iowrite32be(val, &priv->db_bar2[be32_to_cpu(q_resources->db_index)]);
}
