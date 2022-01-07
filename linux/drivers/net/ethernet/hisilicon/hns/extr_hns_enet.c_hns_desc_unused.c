
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hnae_ring {int next_to_clean; int next_to_use; int desc_num; } ;



__attribute__((used)) static int hns_desc_unused(struct hnae_ring *ring)
{
 int ntc = ring->next_to_clean;
 int ntu = ring->next_to_use;

 return ((ntc >= ntu) ? 0 : ring->desc_num) + ntc - ntu;
}
