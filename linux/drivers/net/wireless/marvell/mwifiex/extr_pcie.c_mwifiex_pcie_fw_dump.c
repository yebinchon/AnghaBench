
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef size_t u32 ;
struct TYPE_2__ {int can_dump_fw; struct mwifiex_pcie_card_reg* reg; } ;
struct pcie_service_card {TYPE_1__ pcie; } ;
struct mwifiex_pcie_card_reg {unsigned int fw_dump_start; unsigned int fw_dump_end; int fw_dump_read_done; int fw_dump_ctrl; } ;
struct mwifiex_adapter {size_t num_mem_types; struct memory_type_mapping* mem_type_mapping_tbl; struct pcie_service_card* card; } ;
struct memory_type_mapping {size_t* mem_ptr; size_t mem_size; size_t done_flag; int mem_name; } ;
typedef enum rdwr_status { ____Placeholder_rdwr_status } rdwr_status ;


 int DUMP ;
 int ERROR ;
 int MSG ;
 size_t MWIFIEX_FW_DUMP_MAX_MEMSIZE ;
 size_t MWIFIEX_SIZE_4K ;
 int RDWR_STATUS_DONE ;
 int RDWR_STATUS_FAILURE ;
 int memcpy (size_t*,size_t*,size_t) ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*,...) ;
 int mwifiex_pcie_rdwr_firmware (struct mwifiex_adapter*,size_t) ;
 int mwifiex_read_reg_byte (struct mwifiex_adapter*,unsigned int,size_t*) ;
 int mwifiex_write_reg (struct mwifiex_adapter*,int ,int ) ;
 int vfree (size_t*) ;
 size_t* vmalloc (size_t) ;
 size_t* vzalloc (size_t) ;

__attribute__((used)) static void mwifiex_pcie_fw_dump(struct mwifiex_adapter *adapter)
{
 struct pcie_service_card *card = adapter->card;
 const struct mwifiex_pcie_card_reg *creg = card->pcie.reg;
 unsigned int reg, reg_start, reg_end;
 u8 *dbg_ptr, *end_ptr, *tmp_ptr, fw_dump_num, dump_num;
 u8 idx, i, read_reg, doneflag = 0;
 enum rdwr_status stat;
 u32 memory_size;
 int ret;

 if (!card->pcie.can_dump_fw)
  return;

 for (idx = 0; idx < adapter->num_mem_types; idx++) {
  struct memory_type_mapping *entry =
    &adapter->mem_type_mapping_tbl[idx];

  if (entry->mem_ptr) {
   vfree(entry->mem_ptr);
   entry->mem_ptr = ((void*)0);
  }
  entry->mem_size = 0;
 }

 mwifiex_dbg(adapter, MSG, "== mwifiex firmware dump start ==\n");


 stat = mwifiex_pcie_rdwr_firmware(adapter, doneflag);
 if (stat == RDWR_STATUS_FAILURE)
  return;

 reg = creg->fw_dump_start;
 mwifiex_read_reg_byte(adapter, reg, &fw_dump_num);


 if (fw_dump_num == 0)
  dump_num = 1;
 else
  dump_num = fw_dump_num;


 for (idx = 0; idx < dump_num; idx++) {
  struct memory_type_mapping *entry =
    &adapter->mem_type_mapping_tbl[idx];
  memory_size = 0;
  if (fw_dump_num != 0) {
   stat = mwifiex_pcie_rdwr_firmware(adapter, doneflag);
   if (stat == RDWR_STATUS_FAILURE)
    return;

   reg = creg->fw_dump_start;
   for (i = 0; i < 4; i++) {
    mwifiex_read_reg_byte(adapter, reg, &read_reg);
    memory_size |= (read_reg << (i * 8));
    reg++;
   }
  } else {
   memory_size = MWIFIEX_FW_DUMP_MAX_MEMSIZE;
  }

  if (memory_size == 0) {
   mwifiex_dbg(adapter, MSG, "Firmware dump Finished!\n");
   ret = mwifiex_write_reg(adapter, creg->fw_dump_ctrl,
      creg->fw_dump_read_done);
   if (ret) {
    mwifiex_dbg(adapter, ERROR, "PCIE write err\n");
    return;
   }
   break;
  }

  mwifiex_dbg(adapter, DUMP,
       "%s_SIZE=0x%x\n", entry->mem_name, memory_size);
  entry->mem_ptr = vmalloc(memory_size + 1);
  entry->mem_size = memory_size;
  if (!entry->mem_ptr) {
   mwifiex_dbg(adapter, ERROR,
        "Vmalloc %s failed\n", entry->mem_name);
   return;
  }
  dbg_ptr = entry->mem_ptr;
  end_ptr = dbg_ptr + memory_size;

  doneflag = entry->done_flag;
  mwifiex_dbg(adapter, DUMP, "Start %s output, please wait...\n",
       entry->mem_name);

  do {
   stat = mwifiex_pcie_rdwr_firmware(adapter, doneflag);
   if (RDWR_STATUS_FAILURE == stat)
    return;

   reg_start = creg->fw_dump_start;
   reg_end = creg->fw_dump_end;
   for (reg = reg_start; reg <= reg_end; reg++) {
    mwifiex_read_reg_byte(adapter, reg, dbg_ptr);
    if (dbg_ptr < end_ptr) {
     dbg_ptr++;
     continue;
    }
    mwifiex_dbg(adapter, ERROR,
         "pre-allocated buf not enough\n");
    tmp_ptr =
     vzalloc(memory_size + MWIFIEX_SIZE_4K);
    if (!tmp_ptr)
     return;
    memcpy(tmp_ptr, entry->mem_ptr, memory_size);
    vfree(entry->mem_ptr);
    entry->mem_ptr = tmp_ptr;
    tmp_ptr = ((void*)0);
    dbg_ptr = entry->mem_ptr + memory_size;
    memory_size += MWIFIEX_SIZE_4K;
    end_ptr = entry->mem_ptr + memory_size;
   }

   if (stat != RDWR_STATUS_DONE)
    continue;

   mwifiex_dbg(adapter, DUMP,
        "%s done: size=0x%tx\n",
        entry->mem_name, dbg_ptr - entry->mem_ptr);
   break;
  } while (1);
 }
 mwifiex_dbg(adapter, MSG, "== mwifiex firmware dump end ==\n");
}
