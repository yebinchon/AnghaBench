
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int d1; } ;
struct vring_rx_desc {TYPE_1__ mac; } ;


 int WIL_GET_BITS (int ,int,int) ;

__attribute__((used)) static inline int wil_rxdesc_key_id(struct vring_rx_desc *d)
{
 return WIL_GET_BITS(d->mac.d1, 4, 5);
}
