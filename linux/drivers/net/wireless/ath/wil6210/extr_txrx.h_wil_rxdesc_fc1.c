
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int d0; } ;
struct vring_rx_desc {TYPE_1__ mac; } ;


 int WIL_GET_BITS (int ,int,int) ;

__attribute__((used)) static inline u8 wil_rxdesc_fc1(struct vring_rx_desc *d)
{
 return (u8)(WIL_GET_BITS(d->mac.d0, 10, 15) << 2);
}
