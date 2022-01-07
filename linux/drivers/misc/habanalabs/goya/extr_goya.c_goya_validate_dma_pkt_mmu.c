
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct packet_lin_dma {scalar_t__ tsize; int src_addr; int dst_addr; } ;
struct TYPE_2__ {int va_space_host_end_address; int va_space_host_start_address; } ;
struct hl_device {int dev; TYPE_1__ asic_prop; } ;
struct hl_cs_parser {scalar_t__ hw_queue_id; int patched_cb_size; } ;


 int EFAULT ;
 int EINVAL ;
 scalar_t__ GOYA_QUEUE_ID_DMA_1 ;
 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*) ;
 scalar_t__ hl_mem_area_inside_range (int ,int ,int ,int ) ;
 int le32_to_cpu (scalar_t__) ;
 int le64_to_cpu (int ) ;

__attribute__((used)) static int goya_validate_dma_pkt_mmu(struct hl_device *hdev,
    struct hl_cs_parser *parser,
    struct packet_lin_dma *user_dma_pkt)
{
 dev_dbg(hdev->dev, "DMA packet details:\n");
 dev_dbg(hdev->dev, "source == 0x%llx\n",
  le64_to_cpu(user_dma_pkt->src_addr));
 dev_dbg(hdev->dev, "destination == 0x%llx\n",
  le64_to_cpu(user_dma_pkt->dst_addr));
 dev_dbg(hdev->dev, "size == %u\n", le32_to_cpu(user_dma_pkt->tsize));





 if (parser->hw_queue_id != GOYA_QUEUE_ID_DMA_1 &&
  hl_mem_area_inside_range(le64_to_cpu(user_dma_pkt->src_addr),
    le32_to_cpu(user_dma_pkt->tsize),
    hdev->asic_prop.va_space_host_start_address,
    hdev->asic_prop.va_space_host_end_address)) {
  dev_err(hdev->dev,
   "Can't DMA from host on queue other then 1\n");
  return -EFAULT;
 }

 if (user_dma_pkt->tsize == 0) {
  dev_err(hdev->dev,
   "Got DMA with size 0, might reset the device\n");
  return -EINVAL;
 }

 parser->patched_cb_size += sizeof(*user_dma_pkt);

 return 0;
}
