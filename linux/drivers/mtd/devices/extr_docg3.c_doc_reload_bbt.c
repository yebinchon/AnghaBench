
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct docg3 {scalar_t__ max_block; int * bbt; } ;


 int DIV_ROUND_UP (scalar_t__,int) ;
 int DOC_LAYOUT_BLOCK_BBT ;
 scalar_t__ DOC_LAYOUT_PAGE_BBT ;
 int DOC_LAYOUT_PAGE_SIZE ;
 int doc_read_page_ecc_init (struct docg3*,int) ;
 int doc_read_page_finish (struct docg3*) ;
 int doc_read_page_getbytes (struct docg3*,int,int *,int,int ) ;
 int doc_read_page_prepare (struct docg3*,int,int,scalar_t__,int ) ;

__attribute__((used)) static int doc_reload_bbt(struct docg3 *docg3)
{
 int block = DOC_LAYOUT_BLOCK_BBT;
 int ret = 0, nbpages, page;
 u_char *buf = docg3->bbt;

 nbpages = DIV_ROUND_UP(docg3->max_block + 1, 8 * DOC_LAYOUT_PAGE_SIZE);
 for (page = 0; !ret && (page < nbpages); page++) {
  ret = doc_read_page_prepare(docg3, block, block + 1,
         page + DOC_LAYOUT_PAGE_BBT, 0);
  if (!ret)
   ret = doc_read_page_ecc_init(docg3,
           DOC_LAYOUT_PAGE_SIZE);
  if (!ret)
   doc_read_page_getbytes(docg3, DOC_LAYOUT_PAGE_SIZE,
            buf, 1, 0);
  buf += DOC_LAYOUT_PAGE_SIZE;
 }
 doc_read_page_finish(docg3);
 return ret;
}
