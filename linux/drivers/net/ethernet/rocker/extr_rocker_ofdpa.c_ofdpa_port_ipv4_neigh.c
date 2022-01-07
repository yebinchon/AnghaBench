
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct ofdpa_port {TYPE_1__* dev; int pport; int internal_vlan_id; struct ofdpa* ofdpa; } ;
struct ofdpa_neigh_tbl_entry {int ttl_check; int ip_addr; int index; int eth_dst; TYPE_1__* dev; } ;
struct ofdpa {int neigh_tbl_lock; } ;
typedef enum rocker_of_dpa_table_id { ____Placeholder_rocker_of_dpa_table_id } rocker_of_dpa_table_id ;
typedef int __be32 ;
typedef int __be16 ;
struct TYPE_2__ {int dev_addr; } ;


 int ENOENT ;
 int ENOMEM ;
 int ETH_P_IP ;
 int GFP_KERNEL ;
 int OFDPA_OP_FLAG_REMOVE ;
 int ROCKER_GROUP_L3_UNICAST (int ) ;
 int ROCKER_OF_DPA_TABLE_ID_ACL_POLICY ;
 int ether_addr_copy (int ,int const*) ;
 int htons (int ) ;
 int inet_make_mask (int) ;
 int kfree (struct ofdpa_neigh_tbl_entry*) ;
 struct ofdpa_neigh_tbl_entry* kzalloc (int,int ) ;
 int memcpy (struct ofdpa_neigh_tbl_entry*,struct ofdpa_neigh_tbl_entry*,int) ;
 int netdev_err (TYPE_1__*,char*,int,int *,...) ;
 int ofdpa_flow_tbl_ucast4_routing (struct ofdpa_port*,int ,int ,int ,int ,int,int ,int *,int) ;
 int ofdpa_group_l3_unicast (struct ofdpa_port*,int,int ,int ,int ,int ,int,int ) ;
 int ofdpa_neigh_add (struct ofdpa*,struct ofdpa_neigh_tbl_entry*) ;
 int ofdpa_neigh_del (struct ofdpa_neigh_tbl_entry*) ;
 struct ofdpa_neigh_tbl_entry* ofdpa_neigh_tbl_find (struct ofdpa*,int ) ;
 int ofdpa_neigh_update (struct ofdpa_neigh_tbl_entry*,int const*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ofdpa_port_ipv4_neigh(struct ofdpa_port *ofdpa_port,
     int flags, __be32 ip_addr, const u8 *eth_dst)
{
 struct ofdpa *ofdpa = ofdpa_port->ofdpa;
 struct ofdpa_neigh_tbl_entry *entry;
 struct ofdpa_neigh_tbl_entry *found;
 unsigned long lock_flags;
 __be16 eth_type = htons(ETH_P_IP);
 enum rocker_of_dpa_table_id goto_tbl =
   ROCKER_OF_DPA_TABLE_ID_ACL_POLICY;
 u32 group_id;
 u32 priority = 0;
 bool adding = !(flags & OFDPA_OP_FLAG_REMOVE);
 bool updating;
 bool removing;
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
  ether_addr_copy(entry->eth_dst, eth_dst);
  entry->ttl_check = 1;
  ofdpa_neigh_add(ofdpa, entry);
 } else if (removing) {
  memcpy(entry, found, sizeof(*entry));
  ofdpa_neigh_del(found);
 } else if (updating) {
  ofdpa_neigh_update(found, eth_dst, 1);
  memcpy(entry, found, sizeof(*entry));
 } else {
  err = -ENOENT;
 }

 spin_unlock_irqrestore(&ofdpa->neigh_tbl_lock, lock_flags);

 if (err)
  goto err_out;







 err = ofdpa_group_l3_unicast(ofdpa_port, flags,
         entry->index,
         ofdpa_port->dev->dev_addr,
         entry->eth_dst,
         ofdpa_port->internal_vlan_id,
         entry->ttl_check,
         ofdpa_port->pport);
 if (err) {
  netdev_err(ofdpa_port->dev, "Error (%d) L3 unicast group index %d\n",
      err, entry->index);
  goto err_out;
 }

 if (adding || removing) {
  group_id = ROCKER_GROUP_L3_UNICAST(entry->index);
  err = ofdpa_flow_tbl_ucast4_routing(ofdpa_port,
          eth_type, ip_addr,
          inet_make_mask(32),
          priority, goto_tbl,
          group_id, ((void*)0), flags);

  if (err)
   netdev_err(ofdpa_port->dev, "Error (%d) /32 unicast route %pI4 group 0x%08x\n",
       err, &entry->ip_addr, group_id);
 }

err_out:
 if (!adding)
  kfree(entry);

 return err;
}
