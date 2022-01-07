
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int dummy; } ;


 int EINVAL ;
 int denali_oob_xfer (struct nand_chip*,void*,int) ;
 int denali_payload_xfer (struct nand_chip*,void*,int) ;
 int nand_read_page_op (struct nand_chip*,int,int ,int *,int ) ;

__attribute__((used)) static int denali_read_raw(struct nand_chip *chip, void *buf, void *oob_buf,
      int page)
{
 int ret;

 if (!buf && !oob_buf)
  return -EINVAL;

 ret = nand_read_page_op(chip, page, 0, ((void*)0), 0);
 if (ret)
  return ret;

 if (buf) {
  ret = denali_payload_xfer(chip, buf, 0);
  if (ret)
   return ret;
 }

 if (oob_buf) {
  ret = denali_oob_xfer(chip, oob_buf, 0);
  if (ret)
   return ret;
 }

 return 0;
}
