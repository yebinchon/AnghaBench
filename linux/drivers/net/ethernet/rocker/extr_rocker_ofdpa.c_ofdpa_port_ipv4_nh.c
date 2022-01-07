
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ofdpa_port {int dev; struct ofdpa* ofdpa; } ;
struct ofdpa_neigh_tbl_entry {int index; int eth_dst; int dev; int ip_addr; } ;
struct ofdpa {int neigh_tbl_lock; } ;
typedef int __be32 ;


 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int OFDPA_OP_FLAG_REMOVE ;
 int is_zero_ether_addr (int ) ;
 int kfree (struct ofdpa_neigh_tbl_entry*) ;
 struct ofdpa_neigh_tbl_entry* kzalloc (int,int ) ;
 int ofdpa_neigh_add (struct ofdpa*,struct ofdpa_neigh_tbl_entry*) ;
 int ofdpa_neigh_del (struct ofdpa_neigh_tbl_entry*) ;
 struct ofdpa_neigh_tbl_entry* ofdpa_neigh_tbl_find (struct ofdpa*,int ) ;
 int ofdpa_neigh_update (struct ofdpa_neigh_tbl_entry*,int *,int) ;
 int ofdpa_port_ipv4_resolve (struct ofdpa_port*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ofdpa_port_ipv4_nh(struct ofdpa_port *ofdpa_port,
         int flags, __be32 ip_addr, u32 *index)
{
 struct ofdpa *ofdpa = ofdpa_port->ofdpa;
 struct ofdpa_neigh_tbl_entry *entry;
 struct ofdpa_neigh_tbl_entry *found;
 unsigned long lock_flags;
 bool adding = !(flags & OFDPA_OP_FLAG_REMOVE);
 bool updating;
 bool removing;
 bool resolved = 1;
 int err = 0;

 entry = kzalloc(sizeof(*entry), GFP_KERNEL);
 if (!entry)
  return -ENOMEM;

 spin_lock_irqsave(&ofdpa->neigh_tbl_lock, lock_flags);

 found = ofdpa_neigh_tbl_find(ofdpa, ip_addr);

 updating = found && adding;
 removing = found && !adding;
 adding = !found && adding;

 if (adding) {
  entry->ip_addr = ip_addr;
  entry->dev = ofdpa_port->dev;
  ofdpa_neigh_add(ofdpa, entry);
  *index = entry->index;
  resolved = 0;
 } else if (removing) {
  *index = found->index;
  ofdpa_neigh_del(found);
 } else if (updating) {
  ofdpa_neigh_update(found, ((void*)0), 0);
  resolved = !is_zero_ether_addr(found->eth_dst);
  *index = found->index;
 } else {
  err = -ENOENT;
 }

 spin_unlock_irqrestore(&ofdpa->neigh_tbl_lock, lock_flags);

 if (!adding)
  kfree(entry);

 if (err)
  return err;



 if (!resolved)
  err = ofdpa_port_ipv4_resolve(ofdpa_port, ip_addr);

 return err;
}
