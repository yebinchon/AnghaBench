
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct onenand_chip {int options; int (* read_word ) (scalar_t__) ;int chipsize; scalar_t__ base; int (* wait ) (struct mtd_info*,int ) ;int (* command ) (struct mtd_info*,int ,int ,int ) ;int (* write_word ) (int ,scalar_t__) ;} ;
struct mtd_info {int size; struct onenand_chip* priv; } ;
typedef int loff_t ;


 int FLEXONENAND (struct onenand_chip*) ;
 int FL_LOCKING ;
 int ONENAND_CMD_UNLOCK ;
 int ONENAND_CMD_UNLOCK_ALL ;
 int ONENAND_CTRL_ONGO ;
 int ONENAND_HAS_UNLOCK_ALL ;
 scalar_t__ ONENAND_IS_DDP (struct onenand_chip*) ;
 scalar_t__ ONENAND_REG_CTRL_STATUS ;
 scalar_t__ ONENAND_REG_START_BLOCK_ADDRESS ;
 int ONENAND_SKIP_UNLOCK_CHECK ;
 scalar_t__ onenand_check_lock_status (struct onenand_chip*) ;
 int onenand_do_lock_cmd (struct mtd_info*,int,int,int ) ;
 int stub1 (int ,scalar_t__) ;
 int stub2 (struct mtd_info*,int ,int ,int ) ;
 int stub3 (struct mtd_info*,int ) ;
 int stub4 (scalar_t__) ;

__attribute__((used)) static void onenand_unlock_all(struct mtd_info *mtd)
{
 struct onenand_chip *this = mtd->priv;
 loff_t ofs = 0;
 loff_t len = mtd->size;

 if (this->options & ONENAND_HAS_UNLOCK_ALL) {

  this->write_word(0, this->base + ONENAND_REG_START_BLOCK_ADDRESS);

  this->command(mtd, ONENAND_CMD_UNLOCK_ALL, 0, 0);


  this->wait(mtd, FL_LOCKING);


  while (this->read_word(this->base + ONENAND_REG_CTRL_STATUS)
      & ONENAND_CTRL_ONGO)
   continue;


  if (this->options & ONENAND_SKIP_UNLOCK_CHECK)
   return;


  if (onenand_check_lock_status(this))
   return;


  if (ONENAND_IS_DDP(this) && !FLEXONENAND(this)) {

   ofs = this->chipsize >> 1;
   len = this->chipsize >> 1;
  }
 }

 onenand_do_lock_cmd(mtd, ofs, len, ONENAND_CMD_UNLOCK);
}
