
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct spider_net_descr_chain {int dma_addr; int hwring; int num_desc; struct spider_net_descr* ring; } ;
struct spider_net_descr {struct spider_net_descr* next; TYPE_2__* hwdescr; scalar_t__ bus_addr; } ;
struct spider_net_card {TYPE_1__* pdev; } ;
struct TYPE_4__ {scalar_t__ next_descr_addr; } ;
struct TYPE_3__ {int dev; } ;


 int dma_free_coherent (int *,int ,int ,int ) ;

__attribute__((used)) static void
spider_net_free_chain(struct spider_net_card *card,
        struct spider_net_descr_chain *chain)
{
 struct spider_net_descr *descr;

 descr = chain->ring;
 do {
  descr->bus_addr = 0;
  descr->hwdescr->next_descr_addr = 0;
  descr = descr->next;
 } while (descr != chain->ring);

 dma_free_coherent(&card->pdev->dev, chain->num_desc,
     chain->hwring, chain->dma_addr);
}
