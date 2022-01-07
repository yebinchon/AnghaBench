
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

bool fjes_hw_set_vlan_id(struct epbuf_handler *epbh, u16 vlan_id)
{
 union ep_buffer_info *info = epbh->info;
 int i;

 for (i = 0; i < EP_BUFFER_SUPPORT_VLAN_MAX; i++) {
  if (info->v1i.vlan_id[i] == 0) {
   info->v1i.vlan_id[i] = vlan_id;
   return 1;
  }
 }
 return 0;
}
