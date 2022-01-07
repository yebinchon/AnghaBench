
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hix5hd2_priv {TYPE_1__* pool; int dev; } ;
struct TYPE_2__ {int * desc; int phys_addr; int size; } ;


 int QUEUE_NUMS ;
 int dma_free_coherent (int ,int ,int *,int ) ;

__attribute__((used)) static void hix5hd2_destroy_hw_desc_queue(struct hix5hd2_priv *priv)
{
 int i;

 for (i = 0; i < QUEUE_NUMS; i++) {
  if (priv->pool[i].desc) {
   dma_free_coherent(priv->dev, priv->pool[i].size,
       priv->pool[i].desc,
       priv->pool[i].phys_addr);
   priv->pool[i].desc = ((void*)0);
  }
 }
}
