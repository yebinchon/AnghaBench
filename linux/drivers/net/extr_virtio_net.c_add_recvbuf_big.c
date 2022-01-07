
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtnet_info {scalar_t__ hdr_len; } ;
struct receive_queue {int * sg; int vq; } ;
struct page {unsigned long private; } ;
struct padded_vnet_hdr {int dummy; } ;
typedef int gfp_t ;


 int ENOMEM ;
 int MAX_SKB_FRAGS ;
 scalar_t__ PAGE_SIZE ;
 struct page* get_a_page (struct receive_queue*,int ) ;
 int give_pages (struct receive_queue*,struct page*) ;
 char* page_address (struct page*) ;
 int sg_init_table (int *,int) ;
 int sg_set_buf (int *,char*,scalar_t__) ;
 int virtqueue_add_inbuf (int ,int *,int,struct page*,int ) ;

__attribute__((used)) static int add_recvbuf_big(struct virtnet_info *vi, struct receive_queue *rq,
      gfp_t gfp)
{
 struct page *first, *list = ((void*)0);
 char *p;
 int i, err, offset;

 sg_init_table(rq->sg, MAX_SKB_FRAGS + 2);


 for (i = MAX_SKB_FRAGS + 1; i > 1; --i) {
  first = get_a_page(rq, gfp);
  if (!first) {
   if (list)
    give_pages(rq, list);
   return -ENOMEM;
  }
  sg_set_buf(&rq->sg[i], page_address(first), PAGE_SIZE);


  first->private = (unsigned long)list;
  list = first;
 }

 first = get_a_page(rq, gfp);
 if (!first) {
  give_pages(rq, list);
  return -ENOMEM;
 }
 p = page_address(first);



 sg_set_buf(&rq->sg[0], p, vi->hdr_len);


 offset = sizeof(struct padded_vnet_hdr);
 sg_set_buf(&rq->sg[1], p + offset, PAGE_SIZE - offset);


 first->private = (unsigned long)list;
 err = virtqueue_add_inbuf(rq->vq, rq->sg, MAX_SKB_FRAGS + 2,
      first, gfp);
 if (err < 0)
  give_pages(rq, first);

 return err;
}
