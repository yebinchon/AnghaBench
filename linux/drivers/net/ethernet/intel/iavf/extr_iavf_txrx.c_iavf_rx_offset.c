
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iavf_ring {int dummy; } ;


 unsigned int IAVF_SKB_PAD ;
 scalar_t__ ring_uses_build_skb (struct iavf_ring*) ;

__attribute__((used)) static inline unsigned int iavf_rx_offset(struct iavf_ring *rx_ring)
{
 return ring_uses_build_skb(rx_ring) ? IAVF_SKB_PAD : 0;
}
