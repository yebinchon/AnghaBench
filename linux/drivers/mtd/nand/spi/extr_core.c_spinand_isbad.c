
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spinand_device {int* oobbuf; } ;
struct nand_pos {int target; } ;
struct TYPE_2__ {int* in; } ;
struct nand_page_io_req {int ooblen; int mode; TYPE_1__ oobbuf; int ooboffs; struct nand_pos const pos; } ;
struct nand_device {int dummy; } ;


 int MTD_OPS_RAW ;
 int memset (int*,int ,int) ;
 struct spinand_device* nand_to_spinand (struct nand_device*) ;
 int spinand_read_page (struct spinand_device*,struct nand_page_io_req*,int) ;
 int spinand_select_target (struct spinand_device*,int ) ;

__attribute__((used)) static bool spinand_isbad(struct nand_device *nand, const struct nand_pos *pos)
{
 struct spinand_device *spinand = nand_to_spinand(nand);
 struct nand_page_io_req req = {
  .pos = *pos,
  .ooblen = 2,
  .ooboffs = 0,
  .oobbuf.in = spinand->oobbuf,
  .mode = MTD_OPS_RAW,
 };

 memset(spinand->oobbuf, 0, 2);
 spinand_select_target(spinand, pos->target);
 spinand_read_page(spinand, &req, 0);
 if (spinand->oobbuf[0] != 0xff || spinand->oobbuf[1] != 0xff)
  return 1;

 return 0;
}
