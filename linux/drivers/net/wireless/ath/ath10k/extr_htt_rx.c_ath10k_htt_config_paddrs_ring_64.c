
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* paddrs_ring_64; } ;
struct ath10k_htt {TYPE_1__ rx_ring; } ;



__attribute__((used)) static void ath10k_htt_config_paddrs_ring_64(struct ath10k_htt *htt,
          void *vaddr)
{
 htt->rx_ring.paddrs_ring_64 = vaddr;
}
