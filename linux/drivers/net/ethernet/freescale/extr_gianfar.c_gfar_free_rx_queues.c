
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfar_private {int num_rx_queues; int * rx_queue; } ;


 int kfree (int ) ;

__attribute__((used)) static void gfar_free_rx_queues(struct gfar_private *priv)
{
 int i;

 for (i = 0; i < priv->num_rx_queues; i++)
  kfree(priv->rx_queue[i]);
}
