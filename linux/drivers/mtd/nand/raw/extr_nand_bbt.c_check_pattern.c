
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct nand_bbt_descr {int options; int offs; int len; int pattern; } ;


 int NAND_BBT_NO_OOB ;
 int check_pattern_no_oob (int *,struct nand_bbt_descr*) ;
 scalar_t__ memcmp (int *,int ,int ) ;

__attribute__((used)) static int check_pattern(uint8_t *buf, int len, int paglen, struct nand_bbt_descr *td)
{
 if (td->options & NAND_BBT_NO_OOB)
  return check_pattern_no_oob(buf, td);


 if (memcmp(buf + paglen + td->offs, td->pattern, td->len))
  return -1;

 return 0;
}
