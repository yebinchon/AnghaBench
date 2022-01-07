
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int ale_entries; } ;
struct cpsw_ale {int vlan_field_bits; TYPE_1__ params; } ;


 int ALE_ENTRY_WORDS ;
 int ALE_PORT_HOST ;
 int ALE_TYPE_VLAN ;
 int BIT (int) ;
 int cpsw_ale_get_entry_type (int *) ;
 int cpsw_ale_get_vlan_member_list (int *,int ) ;
 int cpsw_ale_get_vlan_unreg_mcast (int *,int ) ;
 int cpsw_ale_read (struct cpsw_ale*,int,int *) ;
 int cpsw_ale_set_vlan_unreg_mcast (int *,int,int ) ;
 int cpsw_ale_write (struct cpsw_ale*,int,int *) ;

void cpsw_ale_set_allmulti(struct cpsw_ale *ale, int allmulti, int port)
{
 u32 ale_entry[ALE_ENTRY_WORDS];
 int unreg_mcast = 0;
 int type, idx;

 for (idx = 0; idx < ale->params.ale_entries; idx++) {
  int vlan_members;

  cpsw_ale_read(ale, idx, ale_entry);
  type = cpsw_ale_get_entry_type(ale_entry);
  if (type != ALE_TYPE_VLAN)
   continue;
  vlan_members =
   cpsw_ale_get_vlan_member_list(ale_entry,
            ale->vlan_field_bits);

  if (port != -1 && !(vlan_members & BIT(port)))
   continue;

  unreg_mcast =
   cpsw_ale_get_vlan_unreg_mcast(ale_entry,
            ale->vlan_field_bits);
  if (allmulti)
   unreg_mcast |= ALE_PORT_HOST;
  else
   unreg_mcast &= ~ALE_PORT_HOST;
  cpsw_ale_set_vlan_unreg_mcast(ale_entry, unreg_mcast,
           ale->vlan_field_bits);
  cpsw_ale_write(ale, idx, ale_entry);
 }
}
