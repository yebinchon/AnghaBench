
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_ring {int flags; } ;


 int I40E_TXR_FLAGS_XDP ;

__attribute__((used)) static inline bool ring_is_xdp(struct i40e_ring *ring)
{
 return !!(ring->flags & I40E_TXR_FLAGS_XDP);
}
