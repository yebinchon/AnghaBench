
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int vm_end; int vm_start; struct videobuf_mapping* vm_private_data; } ;
struct videobuf_queue {TYPE_1__** bufs; int dev; scalar_t__ streaming; } ;
struct videobuf_mapping {scalar_t__ count; struct videobuf_queue* q; } ;
struct videobuf_dma_contig_memory {int * vaddr; int magic; } ;
struct TYPE_2__ {scalar_t__ baddr; struct videobuf_mapping* map; struct videobuf_dma_contig_memory* priv; } ;


 int MAGIC_CHECK (int ,int ) ;
 int MAGIC_DC_MEM ;
 int VIDEO_MAX_FRAME ;
 int __videobuf_dc_free (int ,struct videobuf_dma_contig_memory*) ;
 int dev_dbg (int ,char*,...) ;
 int kfree (struct videobuf_mapping*) ;
 int videobuf_queue_cancel (struct videobuf_queue*) ;
 int videobuf_queue_lock (struct videobuf_queue*) ;
 int videobuf_queue_unlock (struct videobuf_queue*) ;

__attribute__((used)) static void videobuf_vm_close(struct vm_area_struct *vma)
{
 struct videobuf_mapping *map = vma->vm_private_data;
 struct videobuf_queue *q = map->q;
 int i;

 dev_dbg(q->dev, "vm_close %p [count=%u,vma=%08lx-%08lx]\n",
  map, map->count, vma->vm_start, vma->vm_end);

 map->count--;
 if (0 == map->count) {
  struct videobuf_dma_contig_memory *mem;

  dev_dbg(q->dev, "munmap %p q=%p\n", map, q);
  videobuf_queue_lock(q);


  if (q->streaming)
   videobuf_queue_cancel(q);

  for (i = 0; i < VIDEO_MAX_FRAME; i++) {
   if (((void*)0) == q->bufs[i])
    continue;

   if (q->bufs[i]->map != map)
    continue;

   mem = q->bufs[i]->priv;
   if (mem) {






    MAGIC_CHECK(mem->magic, MAGIC_DC_MEM);




    dev_dbg(q->dev, "buf[%d] freeing %p\n",
     i, mem->vaddr);

    __videobuf_dc_free(q->dev, mem);
    mem->vaddr = ((void*)0);
   }

   q->bufs[i]->map = ((void*)0);
   q->bufs[i]->baddr = 0;
  }

  kfree(map);

  videobuf_queue_unlock(q);
 }
}
