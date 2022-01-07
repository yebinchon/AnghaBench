
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_ring {int flags; } ;


 int I40E_RXR_FLAGS_BUILD_SKB_ENABLED ;

__attribute__((used)) static inline void clear_ring_build_skb_enabled(struct i40e_ring *ring)
{
 ring->flags &= ~I40E_RXR_FLAGS_BUILD_SKB_ENABLED;
}
