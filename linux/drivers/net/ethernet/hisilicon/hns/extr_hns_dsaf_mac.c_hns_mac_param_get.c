
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mac_params {int dev; int mac_id; int addr; int mac_mode; int vaddr; } ;
struct hns_mac_cb {int dev; int mac_id; TYPE_1__* addr_entry_idx; int vaddr; } ;
struct TYPE_2__ {int addr; } ;


 int ether_addr_copy (int ,int ) ;
 int hns_get_enet_interface (struct hns_mac_cb*) ;

__attribute__((used)) static void hns_mac_param_get(struct mac_params *param,
         struct hns_mac_cb *mac_cb)
{
 param->vaddr = mac_cb->vaddr;
 param->mac_mode = hns_get_enet_interface(mac_cb);
 ether_addr_copy(param->addr, mac_cb->addr_entry_idx[0].addr);
 param->mac_id = mac_cb->mac_id;
 param->dev = mac_cb->dev;
}
