
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {void* count; } ;
struct TYPE_8__ {void* count; } ;
struct TYPE_7__ {void* count; } ;
struct TYPE_6__ {void* count; } ;
struct hix5hd2_priv {TYPE_5__* pool; TYPE_4__ tx_rq; TYPE_3__ tx_bq; TYPE_2__ rx_bq; TYPE_1__ rx_fq; struct device* dev; } ;
struct hix5hd2_desc {int dummy; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_10__ {int count; int size; int phys_addr; struct hix5hd2_desc* desc; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int QUEUE_NUMS ;
 void* RX_DESC_NUM ;
 void* TX_DESC_NUM ;
 struct hix5hd2_desc* dma_alloc_coherent (struct device*,int,int *,int ) ;
 int hix5hd2_destroy_hw_desc_queue (struct hix5hd2_priv*) ;

__attribute__((used)) static int hix5hd2_init_hw_desc_queue(struct hix5hd2_priv *priv)
{
 struct device *dev = priv->dev;
 struct hix5hd2_desc *virt_addr;
 dma_addr_t phys_addr;
 int size, i;

 priv->rx_fq.count = RX_DESC_NUM;
 priv->rx_bq.count = RX_DESC_NUM;
 priv->tx_bq.count = TX_DESC_NUM;
 priv->tx_rq.count = TX_DESC_NUM;

 for (i = 0; i < QUEUE_NUMS; i++) {
  size = priv->pool[i].count * sizeof(struct hix5hd2_desc);
  virt_addr = dma_alloc_coherent(dev, size, &phys_addr,
            GFP_KERNEL);
  if (virt_addr == ((void*)0))
   goto error_free_pool;

  priv->pool[i].size = size;
  priv->pool[i].desc = virt_addr;
  priv->pool[i].phys_addr = phys_addr;
 }
 return 0;

error_free_pool:
 hix5hd2_destroy_hw_desc_queue(priv);

 return -ENOMEM;
}
