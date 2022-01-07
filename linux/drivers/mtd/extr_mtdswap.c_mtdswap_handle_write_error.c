
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swap_eb {unsigned int flags; } ;
struct mtdswap_dev {scalar_t__ curr_write_pos; struct swap_eb* curr_write; } ;


 unsigned int EBLOCK_FAILED ;
 int MTDSWAP_FAILING ;
 int mtdswap_handle_badblock (struct mtdswap_dev*,struct swap_eb*) ;
 int mtdswap_rb_add (struct mtdswap_dev*,struct swap_eb*,int ) ;

__attribute__((used)) static int mtdswap_handle_write_error(struct mtdswap_dev *d, struct swap_eb *eb)
{
 unsigned int marked = eb->flags & EBLOCK_FAILED;
 struct swap_eb *curr_write = d->curr_write;

 eb->flags |= EBLOCK_FAILED;
 if (curr_write == eb) {
  d->curr_write = ((void*)0);

  if (!marked && d->curr_write_pos != 0) {
   mtdswap_rb_add(d, eb, MTDSWAP_FAILING);
   return 0;
  }
 }

 return mtdswap_handle_badblock(d, eb);
}
