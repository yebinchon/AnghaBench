
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct mtd_info {int dummy; } ;
typedef int loff_t ;


 int FL_LOCKING ;
 int ONENAND_CMD_UNLOCK ;
 int onenand_do_lock_cmd (struct mtd_info*,int ,int ,int ) ;
 int onenand_get_device (struct mtd_info*,int ) ;
 int onenand_release_device (struct mtd_info*) ;

__attribute__((used)) static int onenand_unlock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
{
 int ret;

 onenand_get_device(mtd, FL_LOCKING);
 ret = onenand_do_lock_cmd(mtd, ofs, len, ONENAND_CMD_UNLOCK);
 onenand_release_device(mtd);
 return ret;
}
