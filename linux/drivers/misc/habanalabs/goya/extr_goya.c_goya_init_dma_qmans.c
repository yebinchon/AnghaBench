
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_hw_queue {int bus_address; } ;
struct hl_device {struct hl_hw_queue* kernel_queues; struct goya_device* asic_specific; } ;
struct goya_device {int hw_cap_initialized; } ;


 int HW_CAP_DMA ;
 int NUMBER_OF_EXT_HW_QUEUES ;
 int goya_init_dma_ch (struct hl_device*,int) ;
 int goya_init_dma_qman (struct hl_device*,int,int ) ;

void goya_init_dma_qmans(struct hl_device *hdev)
{
 struct goya_device *goya = hdev->asic_specific;
 struct hl_hw_queue *q;
 int i;

 if (goya->hw_cap_initialized & HW_CAP_DMA)
  return;

 q = &hdev->kernel_queues[0];

 for (i = 0 ; i < NUMBER_OF_EXT_HW_QUEUES ; i++, q++) {
  goya_init_dma_qman(hdev, i, q->bus_address);
  goya_init_dma_ch(hdev, i);
 }

 goya->hw_cap_initialized |= HW_CAP_DMA;
}
