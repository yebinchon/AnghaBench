
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int ale_entries; } ;
struct cpsw_ale {TYPE_1__ params; } ;


 int ALE_ENTRY_WORDS ;
 int ALE_TYPE_ADDR ;
 int ALE_TYPE_VLAN_ADDR ;
 int cpsw_ale_flush_mcast (struct cpsw_ale*,int *,int) ;
 int cpsw_ale_get_addr (int *,int *) ;
 int cpsw_ale_get_entry_type (int *) ;
 scalar_t__ cpsw_ale_get_mcast (int *) ;
 scalar_t__ cpsw_ale_get_super (int *) ;
 int cpsw_ale_get_vlan_id (int *) ;
 int cpsw_ale_read (struct cpsw_ale*,int,int *) ;
 int cpsw_ale_write (struct cpsw_ale*,int,int *) ;
 int is_broadcast_ether_addr (int *) ;

int cpsw_ale_flush_multicast(struct cpsw_ale *ale, int port_mask, int vid)
{
 u32 ale_entry[ALE_ENTRY_WORDS];
 int ret, idx;

 for (idx = 0; idx < ale->params.ale_entries; idx++) {
  cpsw_ale_read(ale, idx, ale_entry);
  ret = cpsw_ale_get_entry_type(ale_entry);
  if (ret != ALE_TYPE_ADDR && ret != ALE_TYPE_VLAN_ADDR)
   continue;






  if (vid != -1 && cpsw_ale_get_vlan_id(ale_entry) != vid)
   continue;

  if (cpsw_ale_get_mcast(ale_entry)) {
   u8 addr[6];

   if (cpsw_ale_get_super(ale_entry))
    continue;

   cpsw_ale_get_addr(ale_entry, addr);
   if (!is_broadcast_ether_addr(addr))
    cpsw_ale_flush_mcast(ale, ale_entry, port_mask);
  }

  cpsw_ale_write(ale, idx, ale_entry);
 }
 return 0;
}
