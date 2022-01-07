
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef scalar_t__ u16 ;
struct i40e_pf {int pending_udp_bitmap; TYPE_1__* udp_ports; } ;
struct TYPE_2__ {scalar_t__ port; } ;


 int BIT_ULL (size_t) ;
 size_t I40E_MAX_PF_UDP_OFFLOAD_PORTS ;

__attribute__((used)) static u8 i40e_get_udp_port_idx(struct i40e_pf *pf, u16 port)
{
 u8 i;

 for (i = 0; i < I40E_MAX_PF_UDP_OFFLOAD_PORTS; i++) {



  if (!port && (pf->pending_udp_bitmap & BIT_ULL(i)))
   continue;
  if (pf->udp_ports[i].port == port)
   return i;
 }

 return i;
}
