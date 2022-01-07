
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int d0; } ;
struct vring_rx_desc {TYPE_1__ mac; } ;


 int RX_MAC_D0_MAC_ID_VALID ;
 int WIL_GET_BITS (int,int,int) ;

__attribute__((used)) static inline int wil_rxdesc_mid(struct vring_rx_desc *d)
{
 return (d->mac.d0 & RX_MAC_D0_MAC_ID_VALID) ?
  WIL_GET_BITS(d->mac.d0, 8, 9) : 0;
}
