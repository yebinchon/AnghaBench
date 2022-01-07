
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {int total_vfs; } ;
struct TYPE_3__ {int dglort_map; } ;
struct fm10k_hw {TYPE_2__ iov; TYPE_1__ mac; } ;
struct fm10k_intfc {int glort; int glort_count; struct fm10k_hw hw; } ;


 int FM10K_DGLORTMAP_MASK_SHIFT ;
 int FM10K_DGLORTMAP_NONE ;

__attribute__((used)) static void fm10k_request_glort_range(struct fm10k_intfc *interface)
{
 struct fm10k_hw *hw = &interface->hw;
 u16 mask = (~hw->mac.dglort_map) >> FM10K_DGLORTMAP_MASK_SHIFT;


 interface->glort = hw->mac.dglort_map & FM10K_DGLORTMAP_NONE;
 interface->glort_count = 0;


 if (hw->mac.dglort_map == FM10K_DGLORTMAP_NONE)
  return;






 if (mask <= hw->iov.total_vfs) {
  interface->glort_count = 1;
  interface->glort += mask;
 } else if (mask < 64) {
  interface->glort_count = (mask + 1) / 2;
  interface->glort += interface->glort_count;
 } else {
  interface->glort_count = mask - 63;
  interface->glort += 64;
 }
}
