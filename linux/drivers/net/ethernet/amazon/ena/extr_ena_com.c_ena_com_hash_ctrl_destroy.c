
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_rss {int * hash_ctrl; int hash_ctrl_dma_addr; } ;
struct ena_com_dev {int dmadev; struct ena_rss rss; } ;


 int dma_free_coherent (int ,int,int *,int ) ;

__attribute__((used)) static void ena_com_hash_ctrl_destroy(struct ena_com_dev *ena_dev)
{
 struct ena_rss *rss = &ena_dev->rss;

 if (rss->hash_ctrl)
  dma_free_coherent(ena_dev->dmadev, sizeof(*rss->hash_ctrl),
      rss->hash_ctrl, rss->hash_ctrl_dma_addr);
 rss->hash_ctrl = ((void*)0);
}
