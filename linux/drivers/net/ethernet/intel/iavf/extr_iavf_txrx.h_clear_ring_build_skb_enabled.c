
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iavf_ring {int flags; } ;


 int IAVF_RXR_FLAGS_BUILD_SKB_ENABLED ;

__attribute__((used)) static inline void clear_ring_build_skb_enabled(struct iavf_ring *ring)
{
 ring->flags &= ~IAVF_RXR_FLAGS_BUILD_SKB_ENABLED;
}
