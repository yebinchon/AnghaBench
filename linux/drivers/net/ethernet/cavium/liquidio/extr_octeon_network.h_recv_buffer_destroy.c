
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct octeon_skb_page_info {scalar_t__ page_offset; int * page; scalar_t__ dma; } ;


 int dev_kfree_skb_any (struct sk_buff*) ;
 int put_page (int *) ;

__attribute__((used)) static inline void
recv_buffer_destroy(void *buffer, struct octeon_skb_page_info *pg_info)
{
 struct sk_buff *skb = (struct sk_buff *)buffer;

 put_page(pg_info->page);
 pg_info->dma = 0;
 pg_info->page = ((void*)0);
 pg_info->page_offset = 0;

 if (skb)
  dev_kfree_skb_any(skb);
}
