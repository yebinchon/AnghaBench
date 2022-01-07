
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct ice_rx_buf {unsigned int pagecnt_bias; unsigned int page_offset; struct page* page; } ;


 unsigned int ICE_RXBUF_2048 ;
 unsigned int PAGE_SIZE ;
 int USHRT_MAX ;
 int ice_page_is_reserved (struct page*) ;
 unsigned int page_count (struct page*) ;
 int page_ref_add (struct page*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool ice_can_reuse_rx_page(struct ice_rx_buf *rx_buf)
{



 unsigned int pagecnt_bias = rx_buf->pagecnt_bias;
 struct page *page = rx_buf->page;


 if (unlikely(ice_page_is_reserved(page)))
  return 0;



 if (unlikely((page_count(page) - pagecnt_bias) > 1))
  return 0;
 if (unlikely(pagecnt_bias == 1)) {
  page_ref_add(page, USHRT_MAX - 1);
  rx_buf->pagecnt_bias = USHRT_MAX;
 }

 return 1;
}
