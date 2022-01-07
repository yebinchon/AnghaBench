
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct octnic_gather {int list; scalar_t__ sg_dma_ptr; scalar_t__ sg; } ;
struct octeon_device {TYPE_1__* pci_dev; } ;
struct lio {int glist_entry_size; int tx_qsize; int * glist; scalar_t__* glists_dma_base; scalar_t__* glists_virt_base; int * glist_lock; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int OCTNIC_MAX_SG ;
 int OCT_SG_ENTRY_SIZE ;
 int ROUNDUP4 (int ) ;
 int ROUNDUP8 (int) ;
 int dev_to_node (int *) ;
 void* kcalloc (int,int,int ) ;
 int kfree (int *) ;
 struct octnic_gather* kzalloc (int,int ) ;
 struct octnic_gather* kzalloc_node (int,int ,int) ;
 int lio_delete_glists (struct lio*) ;
 scalar_t__ lio_dma_alloc (struct octeon_device*,int,scalar_t__*) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_init (int *) ;

int lio_setup_glists(struct octeon_device *oct, struct lio *lio, int num_iqs)
{
 struct octnic_gather *g;
 int i, j;

 lio->glist_lock =
     kcalloc(num_iqs, sizeof(*lio->glist_lock), GFP_KERNEL);
 if (!lio->glist_lock)
  return -ENOMEM;

 lio->glist =
     kcalloc(num_iqs, sizeof(*lio->glist), GFP_KERNEL);
 if (!lio->glist) {
  kfree(lio->glist_lock);
  lio->glist_lock = ((void*)0);
  return -ENOMEM;
 }

 lio->glist_entry_size =
  ROUNDUP8((ROUNDUP4(OCTNIC_MAX_SG) >> 2) * OCT_SG_ENTRY_SIZE);




 lio->glists_virt_base = kcalloc(num_iqs, sizeof(*lio->glists_virt_base),
     GFP_KERNEL);
 lio->glists_dma_base = kcalloc(num_iqs, sizeof(*lio->glists_dma_base),
           GFP_KERNEL);

 if (!lio->glists_virt_base || !lio->glists_dma_base) {
  lio_delete_glists(lio);
  return -ENOMEM;
 }

 for (i = 0; i < num_iqs; i++) {
  int numa_node = dev_to_node(&oct->pci_dev->dev);

  spin_lock_init(&lio->glist_lock[i]);

  INIT_LIST_HEAD(&lio->glist[i]);

  lio->glists_virt_base[i] =
   lio_dma_alloc(oct,
          lio->glist_entry_size * lio->tx_qsize,
          &lio->glists_dma_base[i]);

  if (!lio->glists_virt_base[i]) {
   lio_delete_glists(lio);
   return -ENOMEM;
  }

  for (j = 0; j < lio->tx_qsize; j++) {
   g = kzalloc_node(sizeof(*g), GFP_KERNEL,
      numa_node);
   if (!g)
    g = kzalloc(sizeof(*g), GFP_KERNEL);
   if (!g)
    break;

   g->sg = lio->glists_virt_base[i] +
    (j * lio->glist_entry_size);

   g->sg_dma_ptr = lio->glists_dma_base[i] +
     (j * lio->glist_entry_size);

   list_add_tail(&g->list, &lio->glist[i]);
  }

  if (j != lio->tx_qsize) {
   lio_delete_glists(lio);
   return -ENOMEM;
  }
 }

 return 0;
}
