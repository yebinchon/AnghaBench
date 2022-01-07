
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spinand_device {int dummy; } ;
struct nand_pos {int target; } ;
struct nand_device {int dummy; } ;


 int EIO ;
 int STATUS_ERASE_FAILED ;
 struct spinand_device* nand_to_spinand (struct nand_device*) ;
 int spinand_erase_op (struct spinand_device*,struct nand_pos const*) ;
 int spinand_select_target (struct spinand_device*,int ) ;
 int spinand_wait (struct spinand_device*,int*) ;
 int spinand_write_enable_op (struct spinand_device*) ;

__attribute__((used)) static int spinand_erase(struct nand_device *nand, const struct nand_pos *pos)
{
 struct spinand_device *spinand = nand_to_spinand(nand);
 u8 status;
 int ret;

 ret = spinand_select_target(spinand, pos->target);
 if (ret)
  return ret;

 ret = spinand_write_enable_op(spinand);
 if (ret)
  return ret;

 ret = spinand_erase_op(spinand, pos);
 if (ret)
  return ret;

 ret = spinand_wait(spinand, &status);
 if (!ret && (status & STATUS_ERASE_FAILED))
  ret = -EIO;

 return ret;
}
