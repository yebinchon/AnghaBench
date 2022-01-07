
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i40e_pf {int state; int pending_udp_bitmap; TYPE_1__* udp_ports; } ;
struct TYPE_2__ {scalar_t__ port; } ;


 int BIT_ULL (int) ;
 int I40E_MAX_PF_UDP_OFFLOAD_PORTS ;
 int __I40E_UDP_FILTER_SYNC_PENDING ;
 int set_bit (int ,int ) ;

__attribute__((used)) static void i40e_sync_udp_filters(struct i40e_pf *pf)
{
 int i;


 for (i = 0; i < I40E_MAX_PF_UDP_OFFLOAD_PORTS; i++) {
  if (pf->udp_ports[i].port)
   pf->pending_udp_bitmap |= BIT_ULL(i);
 }

 set_bit(__I40E_UDP_FILTER_SYNC_PENDING, pf->state);
}
