
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iavf_ring {int flags; } ;


 int IAVF_RXR_FLAGS_BUILD_SKB_ENABLED ;

__attribute__((used)) static inline bool ring_uses_build_skb(struct iavf_ring *ring)
{
 return !!(ring->flags & IAVF_RXR_FLAGS_BUILD_SKB_ENABLED);
}
