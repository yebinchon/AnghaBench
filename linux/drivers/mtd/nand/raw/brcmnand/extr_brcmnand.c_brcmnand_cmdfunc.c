
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct nand_chip {int page_shift; } ;
struct mtd_info {int dummy; } ;
struct TYPE_2__ {scalar_t__ sector_size_1k; } ;
struct brcmnand_host {unsigned int last_cmd; int last_addr; TYPE_1__ hwcfg; scalar_t__ last_byte; struct brcmnand_controller* ctrl; } ;
struct brcmnand_controller {int soc; scalar_t__ flash_cache; int dev; } ;


 int CMD_BLOCK_ERASE ;
 int CMD_DEVICE_ID_READ ;
 int CMD_FLASH_RESET ;
 int CMD_PARAMETER_CHANGE_COL ;
 int CMD_PARAMETER_READ ;
 int CMD_SPARE_AREA_READ ;
 int CMD_STATUS_READ ;
 int FC_BYTES ;
 int FC_WORDS ;
 int LL_OP_ADDR ;
 int LL_OP_CMD ;
 int be32_to_cpu (int ) ;
 scalar_t__ brcmnand_get_sector_size_1k (struct brcmnand_host*) ;
 int brcmnand_low_level_op (struct brcmnand_host*,int ,int,int) ;
 int brcmnand_read_fc (struct brcmnand_controller*,int) ;
 int brcmnand_send_cmd (struct brcmnand_host*,int) ;
 int brcmnand_set_cmd_addr (struct mtd_info*,int) ;
 int brcmnand_set_sector_size_1k (struct brcmnand_host*,scalar_t__) ;
 int brcmnand_soc_data_bus_prepare (int ,int) ;
 int brcmnand_soc_data_bus_unprepare (int ,int) ;
 int brcmnand_waitfunc (struct nand_chip*) ;
 int brcmnand_wp (struct mtd_info*,int) ;
 int dev_dbg (int ,char*,unsigned int,unsigned long long) ;
 struct brcmnand_host* nand_get_controller_data (struct nand_chip*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;

__attribute__((used)) static void brcmnand_cmdfunc(struct nand_chip *chip, unsigned command,
        int column, int page_addr)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct brcmnand_host *host = nand_get_controller_data(chip);
 struct brcmnand_controller *ctrl = host->ctrl;
 u64 addr = (u64)page_addr << chip->page_shift;
 int native_cmd = 0;

 if (command == 133 || command == 134 ||
   command == 130)
  addr = (u64)column;

 else if (page_addr < 0)
  addr = 0;

 dev_dbg(ctrl->dev, "cmd 0x%x addr 0x%llx\n", command,
  (unsigned long long)addr);

 host->last_cmd = command;
 host->last_byte = 0;
 host->last_addr = addr;

 switch (command) {
 case 131:
  native_cmd = CMD_FLASH_RESET;
  break;
 case 128:
  native_cmd = CMD_STATUS_READ;
  break;
 case 133:
  native_cmd = CMD_DEVICE_ID_READ;
  break;
 case 132:
  native_cmd = CMD_SPARE_AREA_READ;
  break;
 case 136:
  native_cmd = CMD_BLOCK_ERASE;
  brcmnand_wp(mtd, 0);
  break;
 case 134:
  native_cmd = CMD_PARAMETER_READ;
  break;
 case 129:
 case 135:
  brcmnand_low_level_op(host, LL_OP_CMD, command, 0);
  brcmnand_low_level_op(host, LL_OP_ADDR, column, 0);
  break;
 case 130:
  native_cmd = CMD_PARAMETER_CHANGE_COL;
  addr &= ~((u64)(FC_BYTES - 1));




  if (brcmnand_get_sector_size_1k(host)) {
   host->hwcfg.sector_size_1k =
    brcmnand_get_sector_size_1k(host);
   brcmnand_set_sector_size_1k(host, 0);
  }
  break;
 }

 if (!native_cmd)
  return;

 brcmnand_set_cmd_addr(mtd, addr);
 brcmnand_send_cmd(host, native_cmd);
 brcmnand_waitfunc(chip);

 if (native_cmd == CMD_PARAMETER_READ ||
   native_cmd == CMD_PARAMETER_CHANGE_COL) {

  u32 *flash_cache = (u32 *)ctrl->flash_cache;
  int i;

  brcmnand_soc_data_bus_prepare(ctrl->soc, 1);





  for (i = 0; i < FC_WORDS; i++)




   flash_cache[i] = be32_to_cpu(brcmnand_read_fc(ctrl, i));

  brcmnand_soc_data_bus_unprepare(ctrl->soc, 1);


  if (host->hwcfg.sector_size_1k)
   brcmnand_set_sector_size_1k(host,
          host->hwcfg.sector_size_1k);
 }


 if (command == 136)
  brcmnand_wp(mtd, 1);
}
