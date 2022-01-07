
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtdswap_dev {int pages_per_eblk; unsigned int curr_write_pos; } ;


 int CLEAN ;
 int TREE_COUNT (struct mtdswap_dev*,int ) ;

__attribute__((used)) static unsigned int mtdswap_free_page_cnt(struct mtdswap_dev *d)
{
 return TREE_COUNT(d, CLEAN) * d->pages_per_eblk +
  d->pages_per_eblk - d->curr_write_pos;
}
