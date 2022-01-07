
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtnet_rq_stats {int drops; int bytes; } ;
struct virtnet_info {unsigned int hdr_len; } ;
struct sk_buff {int dummy; } ;
struct receive_queue {int dummy; } ;
struct page {int dummy; } ;
struct net_device {int dummy; } ;


 int PAGE_SIZE ;
 int give_pages (struct receive_queue*,struct page*) ;
 struct sk_buff* page_to_skb (struct virtnet_info*,struct receive_queue*,struct page*,int ,unsigned int,int ,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct sk_buff *receive_big(struct net_device *dev,
       struct virtnet_info *vi,
       struct receive_queue *rq,
       void *buf,
       unsigned int len,
       struct virtnet_rq_stats *stats)
{
 struct page *page = buf;
 struct sk_buff *skb = page_to_skb(vi, rq, page, 0, len,
       PAGE_SIZE, 1);

 stats->bytes += len - vi->hdr_len;
 if (unlikely(!skb))
  goto err;

 return skb;

err:
 stats->drops++;
 give_pages(rq, page);
 return ((void*)0);
}
