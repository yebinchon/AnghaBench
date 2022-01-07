
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nand_chip {int dummy; } ;


 int ENOTSUPP ;

int nand_read_page_raw_notsupp(struct nand_chip *chip, u8 *buf,
          int oob_required, int page)
{
 return -ENOTSUPP;
}
