
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {struct docg3* priv; } ;
struct docg3 {int max_block; int* bbt; int reliable; } ;
typedef int loff_t ;


 int DOC_LAYOUT_BLOCK_FIRST_DATA ;
 int EINVAL ;
 int calc_block_sector (int ,int*,int*,int*,int*,int ) ;
 int doc_dbg (char*,int ,int,int,int,int) ;

__attribute__((used)) static int doc_block_isbad(struct mtd_info *mtd, loff_t from)
{
 struct docg3 *docg3 = mtd->priv;
 int block0, block1, page, ofs, is_good;

 calc_block_sector(from, &block0, &block1, &page, &ofs,
  docg3->reliable);
 doc_dbg("doc_block_isbad(from=%lld) => block=(%d,%d), page=%d, ofs=%d\n",
  from, block0, block1, page, ofs);

 if (block0 < DOC_LAYOUT_BLOCK_FIRST_DATA)
  return 0;
 if (block1 > docg3->max_block)
  return -EINVAL;

 is_good = docg3->bbt[block0 >> 3] & (1 << (block0 & 0x7));
 return !is_good;
}
