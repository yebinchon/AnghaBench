
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spinand_device {int oobbuf; } ;
struct nand_pos {int target; } ;
struct TYPE_2__ {int out; } ;
struct nand_page_io_req {int ooblen; TYPE_1__ oobbuf; int ooboffs; struct nand_pos const pos; } ;
struct nand_device {int dummy; } ;


 int memset (int ,int ,int) ;
 struct spinand_device* nand_to_spinand (struct nand_device*) ;
 int spinand_erase_op (struct spinand_device*,struct nand_pos const*) ;
 int spinand_select_target (struct spinand_device*,int ) ;
 int spinand_write_enable_op (struct spinand_device*) ;
 int spinand_write_page (struct spinand_device*,struct nand_page_io_req*) ;

__attribute__((used)) static int spinand_markbad(struct nand_device *nand, const struct nand_pos *pos)
{
 struct spinand_device *spinand = nand_to_spinand(nand);
 struct nand_page_io_req req = {
  .pos = *pos,
  .ooboffs = 0,
  .ooblen = 2,
  .oobbuf.out = spinand->oobbuf,
 };
 int ret;


 ret = spinand_select_target(spinand, pos->target);
 if (ret)
  return ret;

 ret = spinand_write_enable_op(spinand);
 if (ret)
  return ret;

 spinand_erase_op(spinand, pos);

 memset(spinand->oobbuf, 0, 2);
 return spinand_write_page(spinand, &req);
}
