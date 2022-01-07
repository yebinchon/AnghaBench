
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int sram_base_address; } ;
struct hl_device {int dev; scalar_t__* pcie_bar; TYPE_1__ asic_prop; } ;
typedef int dma_addr_t ;
 int MME_QMAN_BASE_OFFSET ;
 int MME_QMAN_LENGTH ;
 size_t SRAM_CFG_BAR_ID ;
 int TPC0_QMAN_BASE_OFFSET ;
 int TPC1_QMAN_BASE_OFFSET ;
 int TPC2_QMAN_BASE_OFFSET ;
 int TPC3_QMAN_BASE_OFFSET ;
 int TPC4_QMAN_BASE_OFFSET ;
 int TPC5_QMAN_BASE_OFFSET ;
 int TPC6_QMAN_BASE_OFFSET ;
 int TPC7_QMAN_BASE_OFFSET ;
 int TPC_QMAN_LENGTH ;
 int dev_err (int ,char*,int) ;

void *goya_get_int_queue_base(struct hl_device *hdev, u32 queue_id,
    dma_addr_t *dma_handle, u16 *queue_len)
{
 void *base;
 u32 offset;

 *dma_handle = hdev->asic_prop.sram_base_address;

 base = (void *) hdev->pcie_bar[SRAM_CFG_BAR_ID];

 switch (queue_id) {
 case 136:
  offset = MME_QMAN_BASE_OFFSET;
  *queue_len = MME_QMAN_LENGTH;
  break;
 case 135:
  offset = TPC0_QMAN_BASE_OFFSET;
  *queue_len = TPC_QMAN_LENGTH;
  break;
 case 134:
  offset = TPC1_QMAN_BASE_OFFSET;
  *queue_len = TPC_QMAN_LENGTH;
  break;
 case 133:
  offset = TPC2_QMAN_BASE_OFFSET;
  *queue_len = TPC_QMAN_LENGTH;
  break;
 case 132:
  offset = TPC3_QMAN_BASE_OFFSET;
  *queue_len = TPC_QMAN_LENGTH;
  break;
 case 131:
  offset = TPC4_QMAN_BASE_OFFSET;
  *queue_len = TPC_QMAN_LENGTH;
  break;
 case 130:
  offset = TPC5_QMAN_BASE_OFFSET;
  *queue_len = TPC_QMAN_LENGTH;
  break;
 case 129:
  offset = TPC6_QMAN_BASE_OFFSET;
  *queue_len = TPC_QMAN_LENGTH;
  break;
 case 128:
  offset = TPC7_QMAN_BASE_OFFSET;
  *queue_len = TPC_QMAN_LENGTH;
  break;
 default:
  dev_err(hdev->dev, "Got invalid queue id %d\n", queue_id);
  return ((void*)0);
 }

 base += offset;
 *dma_handle += offset;

 return base;
}
