
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef size_t u32 ;
struct sdio_mmc_card {int func; TYPE_1__* reg; int can_dump_fw; } ;
struct mwifiex_adapter {struct sdio_mmc_card* card; } ;
struct memory_type_mapping {size_t* mem_ptr; size_t mem_size; size_t done_flag; int mem_name; } ;
typedef enum rdwr_status { ____Placeholder_rdwr_status } rdwr_status ;
struct TYPE_2__ {unsigned int fw_dump_start; unsigned int fw_dump_end; int fw_dump_ctrl; } ;


 size_t ARRAY_SIZE (struct memory_type_mapping*) ;
 int DUMP ;
 int ERROR ;
 int FW_DUMP_READ_DONE ;
 int MSG ;
 int RDWR_STATUS_DONE ;
 int RDWR_STATUS_FAILURE ;
 struct memory_type_mapping* mem_type_mapping_tbl ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*,...) ;
 int mwifiex_pm_wakeup_card (struct mwifiex_adapter*) ;
 int mwifiex_sdio_rdwr_firmware (struct mwifiex_adapter*,size_t) ;
 int mwifiex_write_reg (struct mwifiex_adapter*,int ,int ) ;
 int sdio_claim_host (int ) ;
 size_t sdio_readb (int ,unsigned int,int*) ;
 int sdio_release_host (int ) ;
 int vfree (size_t*) ;
 size_t* vmalloc (int ) ;

__attribute__((used)) static void mwifiex_sdio_fw_dump(struct mwifiex_adapter *adapter)
{
 struct sdio_mmc_card *card = adapter->card;
 int ret = 0;
 unsigned int reg, reg_start, reg_end;
 u8 *dbg_ptr, *end_ptr, dump_num, idx, i, read_reg, doneflag = 0;
 enum rdwr_status stat;
 u32 memory_size;

 if (!card->can_dump_fw)
  return;

 for (idx = 0; idx < ARRAY_SIZE(mem_type_mapping_tbl); idx++) {
  struct memory_type_mapping *entry = &mem_type_mapping_tbl[idx];

  if (entry->mem_ptr) {
   vfree(entry->mem_ptr);
   entry->mem_ptr = ((void*)0);
  }
  entry->mem_size = 0;
 }

 mwifiex_pm_wakeup_card(adapter);
 sdio_claim_host(card->func);

 mwifiex_dbg(adapter, MSG, "== mwifiex firmware dump start ==\n");

 stat = mwifiex_sdio_rdwr_firmware(adapter, doneflag);
 if (stat == RDWR_STATUS_FAILURE)
  goto done;

 reg = card->reg->fw_dump_start;

 dump_num = sdio_readb(card->func, reg, &ret);
 if (ret) {
  mwifiex_dbg(adapter, ERROR, "SDIO read memory length err\n");
  goto done;
 }


 for (idx = 0; idx < dump_num; idx++) {
  struct memory_type_mapping *entry = &mem_type_mapping_tbl[idx];

  stat = mwifiex_sdio_rdwr_firmware(adapter, doneflag);
  if (stat == RDWR_STATUS_FAILURE)
   goto done;

  memory_size = 0;
  reg = card->reg->fw_dump_start;
  for (i = 0; i < 4; i++) {
   read_reg = sdio_readb(card->func, reg, &ret);
   if (ret) {
    mwifiex_dbg(adapter, ERROR, "SDIO read err\n");
    goto done;
   }
   memory_size |= (read_reg << i*8);
   reg++;
  }

  if (memory_size == 0) {
   mwifiex_dbg(adapter, DUMP, "Firmware dump Finished!\n");
   ret = mwifiex_write_reg(adapter,
      card->reg->fw_dump_ctrl,
      FW_DUMP_READ_DONE);
   if (ret) {
    mwifiex_dbg(adapter, ERROR, "SDIO write err\n");
    return;
   }
   break;
  }

  mwifiex_dbg(adapter, DUMP,
       "%s_SIZE=0x%x\n", entry->mem_name, memory_size);
  entry->mem_ptr = vmalloc(memory_size + 1);
  entry->mem_size = memory_size;
  if (!entry->mem_ptr) {
   mwifiex_dbg(adapter, ERROR, "Vmalloc %s failed\n",
        entry->mem_name);
   goto done;
  }
  dbg_ptr = entry->mem_ptr;
  end_ptr = dbg_ptr + memory_size;

  doneflag = entry->done_flag;
  mwifiex_dbg(adapter, DUMP,
       "Start %s output, please wait...\n",
       entry->mem_name);

  do {
   stat = mwifiex_sdio_rdwr_firmware(adapter, doneflag);
   if (stat == RDWR_STATUS_FAILURE)
    goto done;

   reg_start = card->reg->fw_dump_start;
   reg_end = card->reg->fw_dump_end;
   for (reg = reg_start; reg <= reg_end; reg++) {
    *dbg_ptr = sdio_readb(card->func, reg, &ret);
    if (ret) {
     mwifiex_dbg(adapter, ERROR,
          "SDIO read err\n");
     goto done;
    }
    if (dbg_ptr < end_ptr)
     dbg_ptr++;
    else
     mwifiex_dbg(adapter, ERROR,
          "Allocated buf not enough\n");
   }

   if (stat != RDWR_STATUS_DONE)
    continue;

   mwifiex_dbg(adapter, DUMP, "%s done: size=0x%tx\n",
        entry->mem_name, dbg_ptr - entry->mem_ptr);
   break;
  } while (1);
 }
 mwifiex_dbg(adapter, MSG, "== mwifiex firmware dump end ==\n");

done:
 sdio_release_host(card->func);
}
