
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct onenand_chip {int (* read_word ) (scalar_t__) ;scalar_t__ base; int (* write_word ) (int,scalar_t__) ;int (* wait ) (struct mtd_info*,int ) ;} ;
struct mtd_info {struct onenand_chip* priv; } ;


 int ENXIO ;
 int FL_RESETING ;
 scalar_t__ ONENAND_BOOTRAM ;
 int ONENAND_CMD_READID ;
 int ONENAND_CMD_RESET ;
 scalar_t__ ONENAND_REG_DEVICE_ID ;
 scalar_t__ ONENAND_REG_MANUFACTURER_ID ;
 scalar_t__ ONENAND_REG_SYS_CFG1 ;
 int ONENAND_SYS_CFG1_SYNC_READ ;
 int ONENAND_SYS_CFG1_SYNC_WRITE ;
 scalar_t__ onenand_check_maf (int) ;
 int stub1 (scalar_t__) ;
 int stub10 (scalar_t__) ;
 int stub2 (int,scalar_t__) ;
 int stub3 (int,scalar_t__) ;
 int stub4 (scalar_t__) ;
 int stub5 (scalar_t__) ;
 int stub6 (int,scalar_t__) ;
 int stub7 (struct mtd_info*,int ) ;
 int stub8 (int,scalar_t__) ;
 int stub9 (scalar_t__) ;

__attribute__((used)) static int onenand_chip_probe(struct mtd_info *mtd)
{
 struct onenand_chip *this = mtd->priv;
 int bram_maf_id, bram_dev_id, maf_id, dev_id;
 int syscfg;


 syscfg = this->read_word(this->base + ONENAND_REG_SYS_CFG1);

 this->write_word((syscfg & ~ONENAND_SYS_CFG1_SYNC_READ & ~ONENAND_SYS_CFG1_SYNC_WRITE), this->base + ONENAND_REG_SYS_CFG1);


 this->write_word(ONENAND_CMD_READID, this->base + ONENAND_BOOTRAM);


 bram_maf_id = this->read_word(this->base + ONENAND_BOOTRAM + 0x0);
 bram_dev_id = this->read_word(this->base + ONENAND_BOOTRAM + 0x2);


 this->write_word(ONENAND_CMD_RESET, this->base + ONENAND_BOOTRAM);

 this->wait(mtd, FL_RESETING);


 this->write_word(syscfg, this->base + ONENAND_REG_SYS_CFG1);


 if (onenand_check_maf(bram_maf_id))
  return -ENXIO;


 maf_id = this->read_word(this->base + ONENAND_REG_MANUFACTURER_ID);
 dev_id = this->read_word(this->base + ONENAND_REG_DEVICE_ID);


 if (maf_id != bram_maf_id || dev_id != bram_dev_id)
  return -ENXIO;

 return 0;
}
