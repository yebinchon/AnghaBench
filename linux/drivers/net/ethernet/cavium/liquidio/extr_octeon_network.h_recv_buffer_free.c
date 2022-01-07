
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ cb; } ;
struct octeon_skb_page_info {scalar_t__ page_offset; int * page; scalar_t__ dma; } ;


 int dev_kfree_skb_any (struct sk_buff*) ;
 int put_page (int *) ;

__attribute__((used)) static inline void recv_buffer_free(void *buffer)
{
 struct sk_buff *skb = (struct sk_buff *)buffer;
 struct octeon_skb_page_info *pg_info;

 pg_info = ((struct octeon_skb_page_info *)(skb->cb));

 if (pg_info->page) {
  put_page(pg_info->page);
  pg_info->dma = 0;
  pg_info->page = ((void*)0);
  pg_info->page_offset = 0;
 }

 dev_kfree_skb_any((struct sk_buff *)buffer);
}
