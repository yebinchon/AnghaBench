
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct hl_device {TYPE_1__* asic_funcs; int dev; } ;
struct armcp_packet {void* data_max_size; int addr; void* ctl; } ;
typedef int pkt ;
typedef int dma_addr_t ;
struct TYPE_2__ {int (* send_cpu_message ) (struct hl_device*,int *,int,int ,long*) ;int (* cpu_accessible_dma_pool_free ) (struct hl_device*,size_t,void*) ;void* (* cpu_accessible_dma_pool_alloc ) (struct hl_device*,size_t,int *) ;} ;


 size_t ARMCP_PACKET_EEPROM_DATA_GET ;
 size_t ARMCP_PKT_CTL_OPCODE_SHIFT ;
 int ENOMEM ;
 int HL_ARMCP_EEPROM_TIMEOUT_USEC ;
 void* cpu_to_le32 (size_t) ;
 int cpu_to_le64 (int ) ;
 int dev_err (int ,char*,...) ;
 int memcpy (void*,void*,int ) ;
 int memset (void*,int ,size_t) ;
 int min (size_t,size_t) ;
 void* stub1 (struct hl_device*,size_t,int *) ;
 int stub2 (struct hl_device*,int *,int,int ,long*) ;
 int stub3 (struct hl_device*,size_t,void*) ;

int hl_fw_get_eeprom_data(struct hl_device *hdev, void *data, size_t max_size)
{
 struct armcp_packet pkt = {};
 void *eeprom_info_cpu_addr;
 dma_addr_t eeprom_info_dma_addr;
 long result;
 int rc;

 eeprom_info_cpu_addr =
   hdev->asic_funcs->cpu_accessible_dma_pool_alloc(hdev,
     max_size, &eeprom_info_dma_addr);
 if (!eeprom_info_cpu_addr) {
  dev_err(hdev->dev,
   "Failed to allocate DMA memory for ArmCP EEPROM packet\n");
  return -ENOMEM;
 }

 memset(eeprom_info_cpu_addr, 0, max_size);

 pkt.ctl = cpu_to_le32(ARMCP_PACKET_EEPROM_DATA_GET <<
    ARMCP_PKT_CTL_OPCODE_SHIFT);
 pkt.addr = cpu_to_le64(eeprom_info_dma_addr);
 pkt.data_max_size = cpu_to_le32(max_size);

 rc = hdev->asic_funcs->send_cpu_message(hdev, (u32 *) &pkt, sizeof(pkt),
   HL_ARMCP_EEPROM_TIMEOUT_USEC, &result);

 if (rc) {
  dev_err(hdev->dev,
   "Failed to send ArmCP EEPROM packet, error %d\n", rc);
  goto out;
 }


 memcpy(data, eeprom_info_cpu_addr, min((size_t)result, max_size));

out:
 hdev->asic_funcs->cpu_accessible_dma_pool_free(hdev, max_size,
   eeprom_info_cpu_addr);

 return rc;
}
