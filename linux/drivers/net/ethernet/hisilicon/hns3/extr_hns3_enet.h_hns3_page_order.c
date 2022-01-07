
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns3_enet_ring {int buf_size; } ;


 int PAGE_SIZE ;

__attribute__((used)) static inline unsigned int hns3_page_order(struct hns3_enet_ring *ring)
{

 if (ring->buf_size > (PAGE_SIZE / 2))
  return 1;

 return 0;
}
