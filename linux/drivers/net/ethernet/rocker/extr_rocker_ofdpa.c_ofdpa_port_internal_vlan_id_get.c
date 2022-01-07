
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofdpa_port {int dev; struct ofdpa* ofdpa; } ;
struct ofdpa_internal_vlan_tbl_entry {int ifindex; int vlan_id; int ref_count; int entry; } ;
struct ofdpa {int internal_vlan_tbl_lock; int internal_vlan_bitmap; int internal_vlan_tbl; } ;
typedef int __be16 ;


 int GFP_KERNEL ;
 scalar_t__ OFDPA_INTERNAL_VLAN_ID_BASE ;
 int OFDPA_N_INTERNAL_VLANS ;
 int hash_add (int ,int *,int) ;
 int htons (scalar_t__) ;
 int kfree (struct ofdpa_internal_vlan_tbl_entry*) ;
 struct ofdpa_internal_vlan_tbl_entry* kzalloc (int,int ) ;
 int netdev_err (int ,char*) ;
 struct ofdpa_internal_vlan_tbl_entry* ofdpa_internal_vlan_tbl_find (struct ofdpa*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_and_set_bit (int,int ) ;

__attribute__((used)) static __be16 ofdpa_port_internal_vlan_id_get(struct ofdpa_port *ofdpa_port,
           int ifindex)
{
 struct ofdpa *ofdpa = ofdpa_port->ofdpa;
 struct ofdpa_internal_vlan_tbl_entry *entry;
 struct ofdpa_internal_vlan_tbl_entry *found;
 unsigned long lock_flags;
 int i;

 entry = kzalloc(sizeof(*entry), GFP_KERNEL);
 if (!entry)
  return 0;

 entry->ifindex = ifindex;

 spin_lock_irqsave(&ofdpa->internal_vlan_tbl_lock, lock_flags);

 found = ofdpa_internal_vlan_tbl_find(ofdpa, ifindex);
 if (found) {
  kfree(entry);
  goto found;
 }

 found = entry;
 hash_add(ofdpa->internal_vlan_tbl, &found->entry, found->ifindex);

 for (i = 0; i < OFDPA_N_INTERNAL_VLANS; i++) {
  if (test_and_set_bit(i, ofdpa->internal_vlan_bitmap))
   continue;
  found->vlan_id = htons(OFDPA_INTERNAL_VLAN_ID_BASE + i);
  goto found;
 }

 netdev_err(ofdpa_port->dev, "Out of internal VLAN IDs\n");

found:
 found->ref_count++;
 spin_unlock_irqrestore(&ofdpa->internal_vlan_tbl_lock, lock_flags);

 return found->vlan_id;
}
