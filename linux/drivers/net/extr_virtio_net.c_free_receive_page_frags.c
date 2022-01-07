
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct virtnet_info {int max_queue_pairs; TYPE_2__* rq; } ;
struct TYPE_3__ {scalar_t__ page; } ;
struct TYPE_4__ {TYPE_1__ alloc_frag; } ;


 int put_page (scalar_t__) ;

__attribute__((used)) static void free_receive_page_frags(struct virtnet_info *vi)
{
 int i;
 for (i = 0; i < vi->max_queue_pairs; i++)
  if (vi->rq[i].alloc_frag.page)
   put_page(vi->rq[i].alloc_frag.page);
}
