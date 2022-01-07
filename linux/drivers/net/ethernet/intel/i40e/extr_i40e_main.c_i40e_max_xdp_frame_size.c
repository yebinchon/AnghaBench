
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i40e_vsi {TYPE_1__* back; } ;
struct TYPE_2__ {int flags; } ;


 int I40E_FLAG_LEGACY_RX ;
 int I40E_RXBUFFER_2048 ;
 int I40E_RXBUFFER_3072 ;
 int PAGE_SIZE ;

__attribute__((used)) static int i40e_max_xdp_frame_size(struct i40e_vsi *vsi)
{
 if (PAGE_SIZE >= 8192 || (vsi->back->flags & I40E_FLAG_LEGACY_RX))
  return I40E_RXBUFFER_2048;
 else
  return I40E_RXBUFFER_3072;
}
