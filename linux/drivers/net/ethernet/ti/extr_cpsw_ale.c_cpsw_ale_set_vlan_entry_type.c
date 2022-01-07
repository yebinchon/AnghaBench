
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int ALE_TYPE_ADDR ;
 int ALE_TYPE_VLAN_ADDR ;
 int ALE_VLAN ;
 int cpsw_ale_set_entry_type (int *,int ) ;
 int cpsw_ale_set_vlan_id (int *,int ) ;

__attribute__((used)) static inline void cpsw_ale_set_vlan_entry_type(u32 *ale_entry,
      int flags, u16 vid)
{
 if (flags & ALE_VLAN) {
  cpsw_ale_set_entry_type(ale_entry, ALE_TYPE_VLAN_ADDR);
  cpsw_ale_set_vlan_id(ale_entry, vid);
 } else {
  cpsw_ale_set_entry_type(ale_entry, ALE_TYPE_ADDR);
 }
}
