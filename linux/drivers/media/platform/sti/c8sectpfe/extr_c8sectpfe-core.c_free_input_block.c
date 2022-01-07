
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct channel_info {int pid_buffer_start; scalar_t__ pid_buffer_busaddr; int back_buffer_start; scalar_t__ back_buffer_busaddr; } ;
struct c8sectpfei {int dev; } ;


 int DMA_BIDIRECTIONAL ;
 int FEI_BUFFER_SIZE ;
 int PID_TABLE_SIZE ;
 int dma_mapping_error (int ,scalar_t__) ;
 int dma_unmap_single (int ,scalar_t__,int ,int ) ;
 int kfree (int ) ;

__attribute__((used)) static void free_input_block(struct c8sectpfei *fei, struct channel_info *tsin)
{
 if (!fei || !tsin)
  return;

 if (tsin->back_buffer_busaddr)
  if (!dma_mapping_error(fei->dev, tsin->back_buffer_busaddr))
   dma_unmap_single(fei->dev, tsin->back_buffer_busaddr,
    FEI_BUFFER_SIZE, DMA_BIDIRECTIONAL);

 kfree(tsin->back_buffer_start);

 if (tsin->pid_buffer_busaddr)
  if (!dma_mapping_error(fei->dev, tsin->pid_buffer_busaddr))
   dma_unmap_single(fei->dev, tsin->pid_buffer_busaddr,
    PID_TABLE_SIZE, DMA_BIDIRECTIONAL);

 kfree(tsin->pid_buffer_start);
}
