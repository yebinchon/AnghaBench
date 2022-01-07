
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* vlan_id; } ;
union ep_buffer_info {TYPE_1__ v1i; } ;
typedef scalar_t__ u16 ;
struct epbuf_handler {union ep_buffer_info* info; } ;


 int EP_BUFFER_SUPPORT_VLAN_MAX ;

void fjes_hw_del_vlan_id(struct epbuf_handler *epbh, u16 vlan_id)
{
 union ep_buffer_info *info = epbh->info;
 int i;

 if (0 != vlan_id) {
  for (i = 0; i < EP_BUFFER_SUPPORT_VLAN_MAX; i++) {
   if (vlan_id == info->v1i.vlan_id[i])
    info->v1i.vlan_id[i] = 0;
  }
 }
}
