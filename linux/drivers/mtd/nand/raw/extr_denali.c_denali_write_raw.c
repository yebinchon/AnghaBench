
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int dummy; } ;


 int EINVAL ;
 int denali_oob_xfer (struct nand_chip*,void*,int) ;
 int denali_payload_xfer (struct nand_chip*,void*,int) ;
 int nand_prog_page_begin_op (struct nand_chip*,int,int ,int *,int ) ;
 int nand_prog_page_end_op (struct nand_chip*) ;

__attribute__((used)) static int denali_write_raw(struct nand_chip *chip, const void *buf,
       const void *oob_buf, int page)
{
 int ret;

 if (!buf && !oob_buf)
  return -EINVAL;

 ret = nand_prog_page_begin_op(chip, page, 0, ((void*)0), 0);
 if (ret)
  return ret;

 if (buf) {
  ret = denali_payload_xfer(chip, (void *)buf, 1);
  if (ret)
   return ret;
 }

 if (oob_buf) {
  ret = denali_oob_xfer(chip, (void *)oob_buf, 1);
  if (ret)
   return ret;
 }

 return nand_prog_page_end_op(chip);
}
