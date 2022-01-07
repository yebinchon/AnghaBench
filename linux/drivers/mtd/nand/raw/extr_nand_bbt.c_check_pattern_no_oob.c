
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct nand_bbt_descr {int len; int pattern; } ;


 scalar_t__ memcmp (int *,int ,int ) ;

__attribute__((used)) static int check_pattern_no_oob(uint8_t *buf, struct nand_bbt_descr *td)
{
 if (memcmp(buf, td->pattern, td->len))
  return -1;
 return 0;
}
