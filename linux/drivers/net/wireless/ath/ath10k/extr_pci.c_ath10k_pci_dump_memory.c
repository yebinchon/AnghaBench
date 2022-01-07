
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct ath10k_mem_region {size_t len; int type; int start; int name; } ;
struct TYPE_2__ {int size; struct ath10k_mem_region* regions; } ;
struct ath10k_hw_mem_layout {TYPE_1__ region_table; } ;
struct ath10k_fw_crash_data {size_t ramdump_buf_len; int * ramdump_buf; } ;
struct ath10k_dump_ram_data_hdr {void* length; void* start; void* region_type; } ;
struct ath10k {int dump_mutex; } ;




 int ATH10K_MEM_REGION_TYPE_IRAM1 ;
 int ATH10K_MEM_REGION_TYPE_IRAM2 ;
 struct ath10k_hw_mem_layout* ath10k_coredump_get_mem_layout (struct ath10k*) ;
 int ath10k_pci_dump_memory_generic (struct ath10k*,struct ath10k_mem_region const*,int *) ;
 size_t ath10k_pci_dump_memory_reg (struct ath10k*,struct ath10k_mem_region const*,int *) ;
 size_t ath10k_pci_dump_memory_sram (struct ath10k*,struct ath10k_mem_region const*,int *) ;
 int ath10k_pci_set_ram_config (struct ath10k*,size_t) ;
 int ath10k_warn (struct ath10k*,char*,int ,int,...) ;
 void* cpu_to_le32 (size_t) ;
 int lockdep_assert_held (int *) ;
 int memset (int *,int ,size_t) ;

__attribute__((used)) static void ath10k_pci_dump_memory(struct ath10k *ar,
       struct ath10k_fw_crash_data *crash_data)
{
 const struct ath10k_hw_mem_layout *mem_layout;
 const struct ath10k_mem_region *current_region;
 struct ath10k_dump_ram_data_hdr *hdr;
 u32 count, shift;
 size_t buf_len;
 int ret, i;
 u8 *buf;

 lockdep_assert_held(&ar->dump_mutex);

 if (!crash_data)
  return;

 mem_layout = ath10k_coredump_get_mem_layout(ar);
 if (!mem_layout)
  return;

 current_region = &mem_layout->region_table.regions[0];

 buf = crash_data->ramdump_buf;
 buf_len = crash_data->ramdump_buf_len;

 memset(buf, 0, buf_len);

 for (i = 0; i < mem_layout->region_table.size; i++) {
  count = 0;

  if (current_region->len > buf_len) {
   ath10k_warn(ar, "memory region %s size %d is larger that remaining ramdump buffer size %zu\n",
        current_region->name,
        current_region->len,
        buf_len);
   break;
  }




  if (current_region->type == ATH10K_MEM_REGION_TYPE_IRAM1 ||
      current_region->type == ATH10K_MEM_REGION_TYPE_IRAM2) {
   shift = current_region->start >> 20;

   ret = ath10k_pci_set_ram_config(ar, shift);
   if (ret) {
    ath10k_warn(ar, "failed to switch ram config to IRAM for section %s: %d\n",
         current_region->name, ret);
    break;
   }
  }


  hdr = (void *)buf;
  buf += sizeof(*hdr);
  buf_len -= sizeof(*hdr);

  switch (current_region->type) {
  case 128:
   count = ath10k_pci_dump_memory_sram(ar, current_region, buf);
   break;
  case 129:
   count = ath10k_pci_dump_memory_reg(ar, current_region, buf);
   break;
  default:
   ret = ath10k_pci_dump_memory_generic(ar, current_region, buf);
   if (ret < 0)
    break;

   count = ret;
   break;
  }

  hdr->region_type = cpu_to_le32(current_region->type);
  hdr->start = cpu_to_le32(current_region->start);
  hdr->length = cpu_to_le32(count);

  if (count == 0)

   break;

  buf += count;
  buf_len -= count;

  current_region++;
 }
}
