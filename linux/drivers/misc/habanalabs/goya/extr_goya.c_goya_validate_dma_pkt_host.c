
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct packet_lin_dma {int tsize; int src_addr; int dst_addr; int ctl; } ;
struct TYPE_2__ {int dram_end_address; int dram_user_base_address; int sram_end_address; int sram_user_base_address; } ;
struct hl_device {int dev; TYPE_1__ asic_prop; } ;
struct hl_cs_parser {int patched_cb_size; scalar_t__ hw_queue_id; } ;
typedef enum goya_dma_direction { ____Placeholder_goya_dma_direction } goya_dma_direction ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;



 int DMA_FROM_DEVICE ;



 int DMA_TO_DEVICE ;
 int EFAULT ;
 int GOYA_PKT_LIN_DMA_CTL_DMA_DIR_MASK ;
 int GOYA_PKT_LIN_DMA_CTL_DMA_DIR_SHIFT ;
 int GOYA_PKT_LIN_DMA_CTL_MEMSET_MASK ;
 int GOYA_PKT_LIN_DMA_CTL_MEMSET_SHIFT ;
 scalar_t__ GOYA_QUEUE_ID_DMA_1 ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*,...) ;
 int goya_pin_memory_before_cs (struct hl_device*,struct hl_cs_parser*,struct packet_lin_dma*,int ,int) ;
 int hl_mem_area_inside_range (int ,int,int ,int ) ;
 int le32_to_cpu (int ) ;
 int le64_to_cpu (int ) ;

__attribute__((used)) static int goya_validate_dma_pkt_host(struct hl_device *hdev,
    struct hl_cs_parser *parser,
    struct packet_lin_dma *user_dma_pkt)
{
 u64 device_memory_addr, addr;
 enum dma_data_direction dir;
 enum goya_dma_direction user_dir;
 bool sram_addr = 1;
 bool skip_host_mem_pin = 0;
 bool user_memset;
 u32 ctl;
 int rc = 0;

 ctl = le32_to_cpu(user_dma_pkt->ctl);

 user_dir = (ctl & GOYA_PKT_LIN_DMA_CTL_DMA_DIR_MASK) >>
   GOYA_PKT_LIN_DMA_CTL_DMA_DIR_SHIFT;

 user_memset = (ctl & GOYA_PKT_LIN_DMA_CTL_MEMSET_MASK) >>
   GOYA_PKT_LIN_DMA_CTL_MEMSET_SHIFT;

 switch (user_dir) {
 case 130:
  dev_dbg(hdev->dev, "DMA direction is HOST --> DRAM\n");
  dir = DMA_TO_DEVICE;
  sram_addr = 0;
  addr = le64_to_cpu(user_dma_pkt->src_addr);
  device_memory_addr = le64_to_cpu(user_dma_pkt->dst_addr);
  if (user_memset)
   skip_host_mem_pin = 1;
  break;

 case 131:
  dev_dbg(hdev->dev, "DMA direction is DRAM --> HOST\n");
  dir = DMA_FROM_DEVICE;
  sram_addr = 0;
  addr = le64_to_cpu(user_dma_pkt->dst_addr);
  device_memory_addr = le64_to_cpu(user_dma_pkt->src_addr);
  break;

 case 129:
  dev_dbg(hdev->dev, "DMA direction is HOST --> SRAM\n");
  dir = DMA_TO_DEVICE;
  addr = le64_to_cpu(user_dma_pkt->src_addr);
  device_memory_addr = le64_to_cpu(user_dma_pkt->dst_addr);
  if (user_memset)
   skip_host_mem_pin = 1;
  break;

 case 128:
  dev_dbg(hdev->dev, "DMA direction is SRAM --> HOST\n");
  dir = DMA_FROM_DEVICE;
  addr = le64_to_cpu(user_dma_pkt->dst_addr);
  device_memory_addr = le64_to_cpu(user_dma_pkt->src_addr);
  break;
 default:
  dev_err(hdev->dev, "DMA direction is undefined\n");
  return -EFAULT;
 }

 if (sram_addr) {
  if (!hl_mem_area_inside_range(device_memory_addr,
    le32_to_cpu(user_dma_pkt->tsize),
    hdev->asic_prop.sram_user_base_address,
    hdev->asic_prop.sram_end_address)) {

   dev_err(hdev->dev,
    "SRAM address 0x%llx + 0x%x is invalid\n",
    device_memory_addr,
    user_dma_pkt->tsize);
   return -EFAULT;
  }
 } else {
  if (!hl_mem_area_inside_range(device_memory_addr,
    le32_to_cpu(user_dma_pkt->tsize),
    hdev->asic_prop.dram_user_base_address,
    hdev->asic_prop.dram_end_address)) {

   dev_err(hdev->dev,
    "DRAM address 0x%llx + 0x%x is invalid\n",
    device_memory_addr,
    user_dma_pkt->tsize);
   return -EFAULT;
  }
 }

 if (skip_host_mem_pin)
  parser->patched_cb_size += sizeof(*user_dma_pkt);
 else {
  if ((dir == DMA_TO_DEVICE) &&
    (parser->hw_queue_id > GOYA_QUEUE_ID_DMA_1)) {
   dev_err(hdev->dev,
    "Can't DMA from host on queue other then 1\n");
   return -EFAULT;
  }

  rc = goya_pin_memory_before_cs(hdev, parser, user_dma_pkt,
      addr, dir);
 }

 return rc;
}
