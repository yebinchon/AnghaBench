
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scif_dma_comp_cb {int temp_buf_to_free; scalar_t__ is_cache; int sdev; int temp_phys; int len; scalar_t__ header_padding; scalar_t__ temp_buf; scalar_t__ dst_window; int dst_offset; } ;


 int SCIF_KMEM_UNALIGNED_BUF_SIZE ;
 int kfree (int ) ;
 int kmem_cache_free (int ,int ) ;
 int scif_rma_local_cpu_copy (int ,scalar_t__,scalar_t__,int ,int) ;
 int scif_unmap_single (int ,int ,int ) ;
 int unaligned_cache ;

__attribute__((used)) static void scif_rma_completion_cb(void *data)
{
 struct scif_dma_comp_cb *comp_cb = data;


 if (comp_cb->dst_window)
  scif_rma_local_cpu_copy(comp_cb->dst_offset,
     comp_cb->dst_window,
     comp_cb->temp_buf +
     comp_cb->header_padding,
     comp_cb->len, 0);
 scif_unmap_single(comp_cb->temp_phys, comp_cb->sdev,
     SCIF_KMEM_UNALIGNED_BUF_SIZE);
 if (comp_cb->is_cache)
  kmem_cache_free(unaligned_cache,
    comp_cb->temp_buf_to_free);
 else
  kfree(comp_cb->temp_buf_to_free);
}
