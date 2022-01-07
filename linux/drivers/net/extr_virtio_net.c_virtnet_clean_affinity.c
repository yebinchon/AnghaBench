
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct virtnet_info {int affinity_hint_set; int max_queue_pairs; TYPE_2__* sq; TYPE_1__* rq; } ;
struct TYPE_4__ {int vq; } ;
struct TYPE_3__ {int vq; } ;


 int virtqueue_set_affinity (int ,int *) ;

__attribute__((used)) static void virtnet_clean_affinity(struct virtnet_info *vi)
{
 int i;

 if (vi->affinity_hint_set) {
  for (i = 0; i < vi->max_queue_pairs; i++) {
   virtqueue_set_affinity(vi->rq[i].vq, ((void*)0));
   virtqueue_set_affinity(vi->sq[i].vq, ((void*)0));
  }

  vi->affinity_hint_set = 0;
 }
}
