
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct onenand_chip {int erase_shift; int page_shift; int page_mask; int writesize; } ;
struct mtd_info {int oobsize; int writesize; struct onenand_chip* priv; } ;
typedef int loff_t ;
struct TYPE_4__ {unsigned int (* mem_addr ) (int,int,int) ;unsigned int* page_buf; unsigned int* oob_buf; } ;


 unsigned int CMD_MAP_01 (TYPE_1__*,unsigned int) ;
 unsigned int CMD_MAP_10 (TYPE_1__*,unsigned int) ;







 int ONENAND_CURRENT_BUFFERRAM (struct onenand_chip*) ;
 int ONENAND_ERASE_START ;
 int ONENAND_SET_NEXT_BUFFERRAM (struct onenand_chip*) ;
 int ONENAND_UNLOCK_ALL ;
 int TRANS_SPARE_OFFSET ;
 int TSRF ;
 TYPE_1__* onenand ;
 void* s3c_read_cmd (unsigned int) ;
 int s3c_write_cmd (int,unsigned int) ;
 int s3c_write_reg (int ,int ) ;
 unsigned int stub1 (int,int,int) ;

__attribute__((used)) static int s3c_onenand_command(struct mtd_info *mtd, int cmd, loff_t addr,
          size_t len)
{
 struct onenand_chip *this = mtd->priv;
 unsigned int *m, *s;
 int fba, fpa, fsa = 0;
 unsigned int mem_addr, cmd_map_01, cmd_map_10;
 int i, mcount, scount;
 int index;

 fba = (int) (addr >> this->erase_shift);
 fpa = (int) (addr >> this->page_shift);
 fpa &= this->page_mask;

 mem_addr = onenand->mem_addr(fba, fpa, fsa);
 cmd_map_01 = CMD_MAP_01(onenand, mem_addr);
 cmd_map_10 = CMD_MAP_10(onenand, mem_addr);

 switch (cmd) {
 case 130:
 case 129:
 case 134:
  ONENAND_SET_NEXT_BUFFERRAM(this);
 default:
  break;
 }

 index = ONENAND_CURRENT_BUFFERRAM(this);




 m = onenand->page_buf;
 s = onenand->oob_buf;

 if (index) {
  m += (this->writesize >> 2);
  s += (mtd->oobsize >> 2);
 }

 mcount = mtd->writesize >> 2;
 scount = mtd->oobsize >> 2;

 switch (cmd) {
 case 130:

  for (i = 0; i < mcount; i++)
   *m++ = s3c_read_cmd(cmd_map_01);
  return 0;

 case 129:
  s3c_write_reg(TSRF, TRANS_SPARE_OFFSET);

  for (i = 0; i < mcount; i++)
   *m++ = s3c_read_cmd(cmd_map_01);


  for (i = 0; i < scount; i++)
   *s++ = s3c_read_cmd(cmd_map_01);

  s3c_write_reg(0, TRANS_SPARE_OFFSET);
  return 0;

 case 132:

  for (i = 0; i < mcount; i++)
   s3c_write_cmd(*m++, cmd_map_01);
  return 0;

 case 131:
  s3c_write_reg(TSRF, TRANS_SPARE_OFFSET);


  for (i = 0; i < mcount; i++)
   s3c_write_cmd(0xffffffff, cmd_map_01);


  for (i = 0; i < scount; i++)
   s3c_write_cmd(*s++, cmd_map_01);

  s3c_write_reg(0, TRANS_SPARE_OFFSET);
  return 0;

 case 128:
  s3c_write_cmd(ONENAND_UNLOCK_ALL, cmd_map_10);
  return 0;

 case 133:
  s3c_write_cmd(ONENAND_ERASE_START, cmd_map_10);
  return 0;

 default:
  break;
 }

 return 0;
}
