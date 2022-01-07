
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofdpa_port {int dev; struct ofdpa* ofdpa; } ;
struct ofdpa_internal_vlan_tbl_entry {scalar_t__ ref_count; int entry; int vlan_id; } ;
struct ofdpa {int internal_vlan_tbl_lock; int internal_vlan_bitmap; } ;


 unsigned long OFDPA_INTERNAL_VLAN_ID_BASE ;
 int clear_bit (unsigned long,int ) ;
 int hash_del (int *) ;
 int kfree (struct ofdpa_internal_vlan_tbl_entry*) ;
 int netdev_err (int ,char*,int) ;
 unsigned long ntohs (int ) ;
 struct ofdpa_internal_vlan_tbl_entry* ofdpa_internal_vlan_tbl_find (struct ofdpa*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
ofdpa_port_internal_vlan_id_put(const struct ofdpa_port *ofdpa_port,
    int ifindex)
{
 struct ofdpa *ofdpa = ofdpa_port->ofdpa;
 struct ofdpa_internal_vlan_tbl_entry *found;
 unsigned long lock_flags;
 unsigned long bit;

 spin_lock_irqsave(&ofdpa->internal_vlan_tbl_lock, lock_flags);

 found = ofdpa_internal_vlan_tbl_find(ofdpa, ifindex);
 if (!found) {
  netdev_err(ofdpa_port->dev,
      "ifindex (%d) not found in internal VLAN tbl\n",
      ifindex);
  goto not_found;
 }

 if (--found->ref_count <= 0) {
  bit = ntohs(found->vlan_id) - OFDPA_INTERNAL_VLAN_ID_BASE;
  clear_bit(bit, ofdpa->internal_vlan_bitmap);
  hash_del(&found->entry);
  kfree(found);
 }

not_found:
 spin_unlock_irqrestore(&ofdpa->internal_vlan_tbl_lock, lock_flags);
}
