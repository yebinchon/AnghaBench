
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nand_bbt_descr {int options; int len; } ;


 int NAND_BBT_NO_OOB ;
 int NAND_BBT_VERSION ;

__attribute__((used)) static u32 add_marker_len(struct nand_bbt_descr *td)
{
 u32 len;

 if (!(td->options & NAND_BBT_NO_OOB))
  return 0;

 len = td->len;
 if (td->options & NAND_BBT_VERSION)
  len++;
 return len;
}
