
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* paddrs_ring_64; } ;
struct ath10k_htt {TYPE_1__ rx_ring; } ;



__attribute__((used)) static void ath10k_htt_reset_paddrs_ring_64(struct ath10k_htt *htt, int idx)
{
 htt->rx_ring.paddrs_ring_64[idx] = 0;
}
