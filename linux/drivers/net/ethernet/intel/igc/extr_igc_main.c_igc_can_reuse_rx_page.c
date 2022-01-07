
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct igc_rx_buffer {unsigned int pagecnt_bias; scalar_t__ page_offset; struct page* page; } ;


 scalar_t__ IGC_LAST_OFFSET ;
 unsigned int USHRT_MAX ;
 int igc_page_is_reserved (struct page*) ;
 int page_ref_add (struct page*,unsigned int) ;
 unsigned int page_ref_count (struct page*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool igc_can_reuse_rx_page(struct igc_rx_buffer *rx_buffer)
{
 unsigned int pagecnt_bias = rx_buffer->pagecnt_bias;
 struct page *page = rx_buffer->page;


 if (unlikely(igc_page_is_reserved(page)))
  return 0;



 if (unlikely((page_ref_count(page) - pagecnt_bias) > 1))
  return 0;
 if (unlikely(!pagecnt_bias)) {
  page_ref_add(page, USHRT_MAX);
  rx_buffer->pagecnt_bias = USHRT_MAX;
 }

 return 1;
}
