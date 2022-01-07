
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct bnx2x_vlan_mac_obj {int head_exe_request; int raw; int wait; int complete; int restore; int delete_all; struct bnx2x_credit_pool_obj* vlans_pool; struct bnx2x_credit_pool_obj* macs_pool; scalar_t__ saved_ramrod_flags; scalar_t__ head_reader; int head; } ;
struct bnx2x_credit_pool_obj {int dummy; } ;
typedef int dma_addr_t ;
typedef int bnx2x_obj_type ;


 int INIT_LIST_HEAD (int *) ;
 int bnx2x_complete_vlan_mac ;
 int bnx2x_init_raw_obj (int *,int ,int ,int ,void*,int ,int,unsigned long*,int ) ;
 int bnx2x_vlan_mac_del_all ;
 int bnx2x_vlan_mac_restore ;
 int bnx2x_wait_vlan_mac ;

__attribute__((used)) static inline void bnx2x_init_vlan_mac_common(struct bnx2x_vlan_mac_obj *o,
 u8 cl_id, u32 cid, u8 func_id, void *rdata, dma_addr_t rdata_mapping,
 int state, unsigned long *pstate, bnx2x_obj_type type,
 struct bnx2x_credit_pool_obj *macs_pool,
 struct bnx2x_credit_pool_obj *vlans_pool)
{
 INIT_LIST_HEAD(&o->head);
 o->head_reader = 0;
 o->head_exe_request = 0;
 o->saved_ramrod_flags = 0;

 o->macs_pool = macs_pool;
 o->vlans_pool = vlans_pool;

 o->delete_all = bnx2x_vlan_mac_del_all;
 o->restore = bnx2x_vlan_mac_restore;
 o->complete = bnx2x_complete_vlan_mac;
 o->wait = bnx2x_wait_vlan_mac;

 bnx2x_init_raw_obj(&o->raw, cl_id, cid, func_id, rdata, rdata_mapping,
      state, pstate, type);
}
