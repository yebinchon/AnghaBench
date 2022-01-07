
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns3_enet_ring {int desc_num; int next_to_use; int next_to_clean; } ;


 int READ_ONCE (int ) ;
 int smp_load_acquire (int *) ;

__attribute__((used)) static inline int ring_space(struct hns3_enet_ring *ring)
{



 int begin = smp_load_acquire(&ring->next_to_clean);
 int end = READ_ONCE(ring->next_to_use);

 return ((end >= begin) ? (ring->desc_num - end + begin) :
   (begin - end)) - 1;
}
