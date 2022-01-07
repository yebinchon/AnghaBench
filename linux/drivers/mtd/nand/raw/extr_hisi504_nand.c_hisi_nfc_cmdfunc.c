
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; } ;
struct nand_chip {TYPE_1__ ecc; } ;
struct mtd_info {int writesize; } ;
struct hinfc_host {unsigned int command; int offset; int * cache_addr_value; int dev; int chipselect; int mmio; } ;


 int HINFC504_CON ;
 unsigned int HINFC504_CON_ECCTYPE_MASK ;
 unsigned int HINFC504_CON_ECCTYPE_SHIFT ;
 int NAND_ECC_HW ;
 int dev_err (int ,char*,unsigned int,int,int) ;
 unsigned int hinfc_read (struct hinfc_host*,int ) ;
 int hinfc_write (struct hinfc_host*,unsigned int,int ) ;
 int hisi_nfc_send_cmd_erase (struct hinfc_host*) ;
 int hisi_nfc_send_cmd_pageprog (struct hinfc_host*) ;
 int hisi_nfc_send_cmd_readid (struct hinfc_host*) ;
 int hisi_nfc_send_cmd_readstart (struct hinfc_host*) ;
 int hisi_nfc_send_cmd_reset (struct hinfc_host*,int ) ;
 int hisi_nfc_send_cmd_status (struct hinfc_host*) ;
 int memset (int ,int ,int) ;
 struct hinfc_host* nand_get_controller_data (struct nand_chip*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int set_addr (struct mtd_info*,int,int) ;

__attribute__((used)) static void hisi_nfc_cmdfunc(struct nand_chip *chip, unsigned command,
        int column, int page_addr)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct hinfc_host *host = nand_get_controller_data(chip);
 int is_cache_invalid = 1;
 unsigned int flag = 0;

 host->command = command;

 switch (command) {
 case 133:
 case 131:
  if (command == 133)
   host->offset = column;
  else
   host->offset = column + mtd->writesize;

  is_cache_invalid = 0;
  set_addr(mtd, column, page_addr);
  hisi_nfc_send_cmd_readstart(host);
  break;

 case 129:
  host->offset = column;
  set_addr(mtd, column, page_addr);
  break;

 case 136:
  set_addr(mtd, column, page_addr);
  break;

 case 134:
  hisi_nfc_send_cmd_pageprog(host);
  break;

 case 135:
  hisi_nfc_send_cmd_erase(host);
  break;

 case 132:
  host->offset = column;
  memset(host->mmio, 0, 0x10);
  hisi_nfc_send_cmd_readid(host);
  break;

 case 128:
  flag = hinfc_read(host, HINFC504_CON);
  if (chip->ecc.mode == NAND_ECC_HW)
   hinfc_write(host,
        flag & ~(HINFC504_CON_ECCTYPE_MASK <<
        HINFC504_CON_ECCTYPE_SHIFT), HINFC504_CON);

  host->offset = 0;
  memset(host->mmio, 0, 0x10);
  hisi_nfc_send_cmd_status(host);
  hinfc_write(host, flag, HINFC504_CON);
  break;

 case 130:
  hisi_nfc_send_cmd_reset(host, host->chipselect);
  break;

 default:
  dev_err(host->dev, "Error: unsupported cmd(cmd=%x, col=%x, page=%x)\n",
   command, column, page_addr);
 }

 if (is_cache_invalid) {
  host->cache_addr_value[0] = ~0;
  host->cache_addr_value[1] = ~0;
 }
}
