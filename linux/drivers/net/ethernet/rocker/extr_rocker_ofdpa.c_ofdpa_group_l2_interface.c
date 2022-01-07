
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ofdpa_port {int dummy; } ;
struct TYPE_2__ {int pop_vlan; } ;
struct ofdpa_group_tbl_entry {TYPE_1__ l2_interface; int group_id; } ;
typedef int __be16 ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int ROCKER_GROUP_L2_INTERFACE (int ,int ) ;
 struct ofdpa_group_tbl_entry* kzalloc (int,int ) ;
 int ofdpa_group_tbl_do (struct ofdpa_port*,int,struct ofdpa_group_tbl_entry*) ;

__attribute__((used)) static int ofdpa_group_l2_interface(struct ofdpa_port *ofdpa_port,
        int flags, __be16 vlan_id,
        u32 out_pport, int pop_vlan)
{
 struct ofdpa_group_tbl_entry *entry;

 entry = kzalloc(sizeof(*entry), GFP_KERNEL);
 if (!entry)
  return -ENOMEM;

 entry->group_id = ROCKER_GROUP_L2_INTERFACE(vlan_id, out_pport);
 entry->l2_interface.pop_vlan = pop_vlan;

 return ofdpa_group_tbl_do(ofdpa_port, flags, entry);
}
