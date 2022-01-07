
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ofdpa_port {struct ofdpa* ofdpa; } ;
struct TYPE_2__ {int vlan_id; int addr; struct ofdpa_port* ofdpa_port; } ;
struct ofdpa_fdb_tbl_entry {int learned; int key_crc32; int entry; void* touched; TYPE_1__ key; } ;
struct ofdpa {int fdb_tbl_lock; int fdb_tbl; } ;
typedef int __be16 ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int OFDPA_OP_FLAG_LEARNED ;
 int OFDPA_OP_FLAG_REFRESH ;
 int OFDPA_OP_FLAG_REMOVE ;
 int crc32 (int ,TYPE_1__*,int) ;
 int ether_addr_copy (int ,unsigned char const*) ;
 int hash_add (int ,int *,int ) ;
 int hash_del (int *) ;
 void* jiffies ;
 int kfree (struct ofdpa_fdb_tbl_entry*) ;
 struct ofdpa_fdb_tbl_entry* kzalloc (int,int ) ;
 struct ofdpa_fdb_tbl_entry* ofdpa_fdb_tbl_find (struct ofdpa*,struct ofdpa_fdb_tbl_entry*) ;
 int ofdpa_port_fdb_learn (struct ofdpa_port*,int,unsigned char const*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ofdpa_port_fdb(struct ofdpa_port *ofdpa_port,
     const unsigned char *addr,
     __be16 vlan_id, int flags)
{
 struct ofdpa *ofdpa = ofdpa_port->ofdpa;
 struct ofdpa_fdb_tbl_entry *fdb;
 struct ofdpa_fdb_tbl_entry *found;
 bool removing = (flags & OFDPA_OP_FLAG_REMOVE);
 unsigned long lock_flags;

 fdb = kzalloc(sizeof(*fdb), GFP_KERNEL);
 if (!fdb)
  return -ENOMEM;

 fdb->learned = (flags & OFDPA_OP_FLAG_LEARNED);
 fdb->touched = jiffies;
 fdb->key.ofdpa_port = ofdpa_port;
 ether_addr_copy(fdb->key.addr, addr);
 fdb->key.vlan_id = vlan_id;
 fdb->key_crc32 = crc32(~0, &fdb->key, sizeof(fdb->key));

 spin_lock_irqsave(&ofdpa->fdb_tbl_lock, lock_flags);

 found = ofdpa_fdb_tbl_find(ofdpa, fdb);

 if (found) {
  found->touched = jiffies;
  if (removing) {
   kfree(fdb);
   hash_del(&found->entry);
  }
 } else if (!removing) {
  hash_add(ofdpa->fdb_tbl, &fdb->entry,
    fdb->key_crc32);
 }

 spin_unlock_irqrestore(&ofdpa->fdb_tbl_lock, lock_flags);


 if (!found != !removing) {
  kfree(fdb);
  if (!found && removing)
   return 0;

  flags |= OFDPA_OP_FLAG_REFRESH;
 }

 return ofdpa_port_fdb_learn(ofdpa_port, flags, addr, vlan_id);
}
