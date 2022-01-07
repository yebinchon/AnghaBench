
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct onenand_chip {size_t chipsize; int options; int (* wait ) (struct mtd_info*,int ) ;int (* command ) (struct mtd_info*,int ,int ,int ) ;} ;
struct mtd_info {struct onenand_chip* priv; } ;
typedef int loff_t ;


 int FL_LOCKING ;
 int ONENAND_CMD_UNLOCK ;
 int ONENAND_CMD_UNLOCK_ALL ;
 int ONENAND_HAS_UNLOCK_ALL ;
 int ONENAND_IS_DDP (struct onenand_chip*) ;
 int s3c_onenand_check_lock_status (struct mtd_info*) ;
 int s3c_onenand_do_lock_cmd (struct mtd_info*,int,size_t,int ) ;
 int stub1 (struct mtd_info*,int ,int ,int ) ;
 int stub2 (struct mtd_info*,int ) ;

__attribute__((used)) static void s3c_unlock_all(struct mtd_info *mtd)
{
 struct onenand_chip *this = mtd->priv;
 loff_t ofs = 0;
 size_t len = this->chipsize;

 if (this->options & ONENAND_HAS_UNLOCK_ALL) {

  this->command(mtd, ONENAND_CMD_UNLOCK_ALL, 0, 0);


  this->wait(mtd, FL_LOCKING);


  if (!ONENAND_IS_DDP(this)) {
   s3c_onenand_check_lock_status(mtd);
   return;
  }


  ofs = this->chipsize >> 1;
  len = this->chipsize >> 1;
 }

 s3c_onenand_do_lock_cmd(mtd, ofs, len, ONENAND_CMD_UNLOCK);

 s3c_onenand_check_lock_status(mtd);
}
