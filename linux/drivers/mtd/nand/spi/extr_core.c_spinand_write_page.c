
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spinand_device {int dummy; } ;
struct nand_page_io_req {int dummy; } ;


 int EIO ;
 int STATUS_PROG_FAILED ;
 int spinand_program_op (struct spinand_device*,struct nand_page_io_req const*) ;
 int spinand_wait (struct spinand_device*,int*) ;
 int spinand_write_enable_op (struct spinand_device*) ;
 int spinand_write_to_cache_op (struct spinand_device*,struct nand_page_io_req const*) ;

__attribute__((used)) static int spinand_write_page(struct spinand_device *spinand,
         const struct nand_page_io_req *req)
{
 u8 status;
 int ret;

 ret = spinand_write_enable_op(spinand);
 if (ret)
  return ret;

 ret = spinand_write_to_cache_op(spinand, req);
 if (ret)
  return ret;

 ret = spinand_program_op(spinand, req);
 if (ret)
  return ret;

 ret = spinand_wait(spinand, &status);
 if (!ret && (status & STATUS_PROG_FAILED))
  ret = -EIO;

 return ret;
}
