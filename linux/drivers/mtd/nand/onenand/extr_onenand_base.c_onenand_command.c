
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct onenand_chip {int density_mask; int page_shift; int writesize; int page_mask; scalar_t__ base; int (* write_word ) (int,scalar_t__) ;} ;
struct mtd_info {struct onenand_chip* priv; } ;
typedef int loff_t ;


 int FLEXONENAND (struct onenand_chip*) ;



 int ONENAND_CMD_2X_PROG ;







 int ONENAND_CMD_PROG ;




 int ONENAND_CURRENT_BUFFERRAM (struct onenand_chip*) ;
 int ONENAND_INT_CLEAR ;
 scalar_t__ ONENAND_IS_2PLANE (struct onenand_chip*) ;
 scalar_t__ ONENAND_IS_4KB_PAGE (struct onenand_chip*) ;
 scalar_t__ ONENAND_REG_COMMAND ;
 scalar_t__ ONENAND_REG_INTERRUPT ;
 scalar_t__ ONENAND_REG_START_ADDRESS1 ;
 scalar_t__ ONENAND_REG_START_ADDRESS2 ;
 scalar_t__ ONENAND_REG_START_ADDRESS8 ;
 scalar_t__ ONENAND_REG_START_BUFFER ;
 int ONENAND_SET_BUFFERRAM0 (struct onenand_chip*) ;
 int ONENAND_SET_NEXT_BUFFERRAM (struct onenand_chip*) ;
 int onenand_addr (struct onenand_chip*,int) ;
 int onenand_block (struct onenand_chip*,int) ;
 int onenand_block_address (struct onenand_chip*,int) ;
 int onenand_buffer_address (int,int,int) ;
 int onenand_bufferram_address (struct onenand_chip*,int) ;
 int onenand_page_address (int,int) ;
 int stub1 (int,scalar_t__) ;
 int stub2 (int,scalar_t__) ;
 int stub3 (int,scalar_t__) ;
 int stub4 (int,scalar_t__) ;
 int stub5 (int,scalar_t__) ;
 int stub6 (int,scalar_t__) ;
 int stub7 (int,scalar_t__) ;

__attribute__((used)) static int onenand_command(struct mtd_info *mtd, int cmd, loff_t addr, size_t len)
{
 struct onenand_chip *this = mtd->priv;
 int value, block, page;


 switch (cmd) {
 case 129:
 case 135:
 case 134:
 case 128:
  block = -1;
  page = -1;
  break;

 case 141:

  block = addr * this->density_mask;
  page = -1;
  break;

 case 137:
 case 133:
 case 136:
 case 138:
 case 132:
  block = onenand_block(this, addr);
  page = -1;
  break;

 case 140:
  cmd = 131;
  block = addr * this->density_mask;
  page = 0;
  break;

 default:
  block = onenand_block(this, addr);
  if (FLEXONENAND(this))
   page = (int) (addr - onenand_addr(this, block))>> this->page_shift;

  else
   page = (int) (addr >> this->page_shift);
  if (ONENAND_IS_2PLANE(this)) {

   block &= ~1;

   if (addr & this->writesize)
    block++;
   page >>= 1;
  }
  page &= this->page_mask;
  break;
 }


 if (cmd == 138) {

  value = onenand_bufferram_address(this, block);
  this->write_word(value, this->base + ONENAND_REG_START_ADDRESS2);

  if (ONENAND_IS_2PLANE(this) || ONENAND_IS_4KB_PAGE(this))

   ONENAND_SET_BUFFERRAM0(this);
  else

   ONENAND_SET_NEXT_BUFFERRAM(this);

  return 0;
 }

 if (block != -1) {

  value = onenand_block_address(this, block);
  this->write_word(value, this->base + ONENAND_REG_START_ADDRESS1);


  value = onenand_bufferram_address(this, block);
  this->write_word(value, this->base + ONENAND_REG_START_ADDRESS2);
 }

 if (page != -1) {

  int sectors = 0, count = 0;
  int dataram;

  switch (cmd) {
  case 139:
  case 131:
  case 130:
   if (ONENAND_IS_4KB_PAGE(this))

    dataram = ONENAND_SET_BUFFERRAM0(this);
   else
    dataram = ONENAND_SET_NEXT_BUFFERRAM(this);
   break;

  default:
   if (ONENAND_IS_2PLANE(this) && cmd == ONENAND_CMD_PROG)
    cmd = ONENAND_CMD_2X_PROG;
   dataram = ONENAND_CURRENT_BUFFERRAM(this);
   break;
  }


  value = onenand_page_address(page, sectors);
  this->write_word(value, this->base + ONENAND_REG_START_ADDRESS8);


  value = onenand_buffer_address(dataram, sectors, count);
  this->write_word(value, this->base + ONENAND_REG_START_BUFFER);
 }


 this->write_word(ONENAND_INT_CLEAR, this->base + ONENAND_REG_INTERRUPT);


 this->write_word(cmd, this->base + ONENAND_REG_COMMAND);

 return 0;
}
