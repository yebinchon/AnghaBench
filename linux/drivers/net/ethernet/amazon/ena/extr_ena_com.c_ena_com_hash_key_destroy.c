
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_rss {int * hash_key; int hash_key_dma_addr; } ;
struct ena_com_dev {int dmadev; struct ena_rss rss; } ;


 int dma_free_coherent (int ,int,int *,int ) ;

__attribute__((used)) static void ena_com_hash_key_destroy(struct ena_com_dev *ena_dev)
{
 struct ena_rss *rss = &ena_dev->rss;

 if (rss->hash_key)
  dma_free_coherent(ena_dev->dmadev, sizeof(*rss->hash_key),
      rss->hash_key, rss->hash_key_dma_addr);
 rss->hash_key = ((void*)0);
}
