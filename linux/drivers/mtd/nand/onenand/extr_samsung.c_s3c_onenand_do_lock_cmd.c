
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct onenand_chip {int erase_shift; int (* wait ) (struct mtd_info*,int ) ;} ;
struct mtd_info {struct onenand_chip* priv; } ;
typedef int loff_t ;
struct TYPE_3__ {int (* mem_addr ) (int,int ,int ) ;} ;


 int CMD_MAP_10 (TYPE_1__*,int) ;
 int FL_LOCKING ;
 int ONENAND_CMD_LOCK ;
 int ONENAND_LOCK_END ;
 int ONENAND_LOCK_START ;
 int ONENAND_UNLOCK_END ;
 int ONENAND_UNLOCK_START ;
 TYPE_1__* onenand ;
 int s3c_write_cmd (int ,int ) ;
 int stub1 (int,int ,int ) ;
 int stub2 (int,int ,int ) ;
 int stub3 (struct mtd_info*,int ) ;

__attribute__((used)) static void s3c_onenand_do_lock_cmd(struct mtd_info *mtd, loff_t ofs,
        size_t len, int cmd)
{
 struct onenand_chip *this = mtd->priv;
 int start, end, start_mem_addr, end_mem_addr;

 start = ofs >> this->erase_shift;
 start_mem_addr = onenand->mem_addr(start, 0, 0);
 end = start + (len >> this->erase_shift) - 1;
 end_mem_addr = onenand->mem_addr(end, 0, 0);

 if (cmd == ONENAND_CMD_LOCK) {
  s3c_write_cmd(ONENAND_LOCK_START, CMD_MAP_10(onenand,
            start_mem_addr));
  s3c_write_cmd(ONENAND_LOCK_END, CMD_MAP_10(onenand,
          end_mem_addr));
 } else {
  s3c_write_cmd(ONENAND_UNLOCK_START, CMD_MAP_10(onenand,
              start_mem_addr));
  s3c_write_cmd(ONENAND_UNLOCK_END, CMD_MAP_10(onenand,
            end_mem_addr));
 }

 this->wait(mtd, FL_LOCKING);
}
