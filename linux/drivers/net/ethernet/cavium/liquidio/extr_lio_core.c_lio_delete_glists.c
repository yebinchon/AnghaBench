
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ octnic_gather ;
struct lio {int glist_entry_size; int tx_qsize; scalar_t__* glist; scalar_t__* glists_dma_base; scalar_t__* glists_virt_base; TYPE_1__* oct_dev; scalar_t__* glist_lock; } ;
struct TYPE_2__ {int num_iqs; } ;


 int kfree (scalar_t__*) ;
 int lio_dma_free (TYPE_1__*,int,scalar_t__,scalar_t__) ;
 scalar_t__ lio_list_delete_head (scalar_t__*) ;

void lio_delete_glists(struct lio *lio)
{
 struct octnic_gather *g;
 int i;

 kfree(lio->glist_lock);
 lio->glist_lock = ((void*)0);

 if (!lio->glist)
  return;

 for (i = 0; i < lio->oct_dev->num_iqs; i++) {
  do {
   g = (struct octnic_gather *)
       lio_list_delete_head(&lio->glist[i]);
   kfree(g);
  } while (g);

  if (lio->glists_virt_base && lio->glists_virt_base[i] &&
      lio->glists_dma_base && lio->glists_dma_base[i]) {
   lio_dma_free(lio->oct_dev,
         lio->glist_entry_size * lio->tx_qsize,
         lio->glists_virt_base[i],
         lio->glists_dma_base[i]);
  }
 }

 kfree(lio->glists_virt_base);
 lio->glists_virt_base = ((void*)0);

 kfree(lio->glists_dma_base);
 lio->glists_dma_base = ((void*)0);

 kfree(lio->glist);
 lio->glist = ((void*)0);
}
