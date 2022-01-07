
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gve_priv {int num_event_counters; int * counter_array; int counter_array_bus; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int dma_free_coherent (int *,int,int *,int ) ;

__attribute__((used)) static void gve_free_counter_array(struct gve_priv *priv)
{
 dma_free_coherent(&priv->pdev->dev,
     priv->num_event_counters *
     sizeof(*priv->counter_array),
     priv->counter_array, priv->counter_array_bus);
 priv->counter_array = ((void*)0);
}
